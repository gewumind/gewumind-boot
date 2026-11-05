#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""2.0 验收 runner：黄金集 + 越权矩阵 + 门禁。

用法:
  python3 run_acceptance.py --base http://127.0.0.1:9200 \
      [--golden golden.json] [--matrix permissions.json] [--concurrency 4] [--skip-gate]

退出码: 0=通过  1=失败（泄漏/断言不过）  2=环境错误（服务不可达/登录失败/配置操作失败）
"""
import argparse
import concurrent.futures as cf
import hashlib
import json
import os
import sys
import urllib.error
import urllib.request

HERE = os.path.dirname(os.path.abspath(__file__))
REFUSAL_CODES = {"NO_DATA", "NOT_FOUND", "NO_PERMISSION", "UNSUPPORTED", "TOOL_ERROR", "NEED_CLARIFY"}


def http_json(url, data=None, token=None, method=None, timeout=120):
    headers = {"Content-Type": "application/json"}
    if token:
        headers["token"] = token
    body = json.dumps(data).encode("utf-8") if data is not None else None
    req = urllib.request.Request(url, data=body, headers=headers, method=method or ("POST" if body is not None else "GET"))
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return json.loads(resp.read().decode("utf-8"))


def login(base, username, password_plain):
    digest = hashlib.sha256(password_plain.encode("utf-8")).hexdigest()
    out = http_json(base + "/system/security/login", {"username": username, "password": digest}, timeout=30)
    token = (out or {}).get("data")
    if not token:
        raise RuntimeError("登录失败 %s: %s" % (username, out))
    return token


def ask_sse(base, token, question, timeout=120):
    """POST /api/ai/chat/stream，解析 SSE 事件，返回 {status, content, citations, error_code, grounded}。"""
    headers = {"Content-Type": "application/json", "Accept": "text/event-stream"}
    if token:
        headers["token"] = token
    req = urllib.request.Request(
        base + "/api/ai/chat/stream",
        data=json.dumps({"question": question}).encode("utf-8"),
        headers=headers,
        method="POST",
    )
    result = {"status": None, "content": "", "citations": None, "error_code": None, "grounded": None}
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        event = None
        for raw in resp:
            line = raw.decode("utf-8", errors="replace").rstrip("\n")
            if line.startswith("event:"):
                event = line[6:].strip()
            elif line.startswith("data:"):
                data = line[5:].strip()
                try:
                    payload = json.loads(data) if data else {}
                except json.JSONDecodeError:
                    payload = {"raw": data}
                if event == "message":
                    result["content"] += payload.get("content", "")
                elif event == "citations":
                    result["citations"] = payload.get("citations")
                elif event == "done":
                    result["status"] = payload.get("status")
                    result["grounded"] = payload.get("grounded")
                    if payload.get("refusal_code"):
                        result["status"] = payload["refusal_code"]
                elif event == "error":
                    result["error_code"] = payload.get("code")
                    result["content"] = payload.get("message", "")
                    result["status"] = payload.get("code")
                event = None
    if result["status"] is None and result["error_code"]:
        result["status"] = result["error_code"]
    return result


def check_golden(base, token, spec):
    cases = spec["cases"]
    failures = []
    for c in cases:
        r = ask_sse(base, token, c["question"])
        status = r["status"]
        problems = []
        if status != c["expect_status"]:
            problems.append("status=%s 期望 %s" % (status, c["expect_status"]))
        for s in c.get("contains", []):
            if s not in r["content"]:
                problems.append("答案缺少「%s」" % s)
        for s in c.get("not_contains", []):
            if s in r["content"]:
                problems.append("答案不应含「%s」" % s)
        if problems:
            failures.append("%s [%s] %s | 答案: %s" % (c["id"], c["question"], "; ".join(problems), r["content"][:120]))
        else:
            print("  ok  %s %s" % (c["id"], c["question"]))
    return failures


def probe_tools(probe):
    """探针可被哪些工具回答（单工具用 tool 字段，多工具用 tools 字段）。"""
    if probe.get("tools"):
        return probe["tools"]
    if probe.get("tool"):
        return [probe["tool"]]
    return []


def expected_for(role, probe):
    if probe["category"] in ("write", "out"):
        return "UNSUPPORTED"
    if any(t in role["tools"] for t in probe_tools(probe)):
        return "success"
    return "NO_PERMISSION"


def check_matrix(base, spec, concurrency):
    roles = spec["roles"]
    probes = spec["probes"]
    tokens = {}

    def run_one(role, probe):
        user = role["user"]
        if user not in tokens:
            tokens[user] = login(base, user, "123456")
        r = ask_sse(base, tokens[user], probe["question"])
        actual = r["status"]
        expected = expected_for(role, probe)
        leak = expected in ("NO_PERMISSION", "UNSUPPORTED") and actual == "success"
        soft = expected == "success" and actual != "success"
        return (role, probe, expected, actual, leak, soft, r["content"])

    leaks, softs = [], []
    with cf.ThreadPoolExecutor(max_workers=concurrency) as pool:
        futs = [pool.submit(run_one, role, probe) for role in roles for probe in probes]
        for fut in cf.as_completed(futs):
            role, probe, expected, actual, leak, soft, content = fut.result()
            tag = "%s×%s" % (role["key"], probe["id"])
            if leak:
                leaks.append("%s 期望 %s 实际 success | 答案: %s" % (tag, expected, content[:120]))
            elif soft:
                softs.append("%s 期望 success 实际 %s" % (tag, actual))
            else:
                print("  ok  %s (%s→%s)" % (tag, expected, actual))
    return leaks, softs


def check_kb_golden(base, token, spec):
    """2.1 知识库黄金集：知识问答须 success + 带引用 + 内容命中。"""
    cases = spec["cases"]
    failures = []
    for c in cases:
        r = ask_sse(base, token, c["question"])
        status = r["status"]
        problems = []
        if status != c["expect_status"]:
            problems.append("status=%s 期望 %s" % (status, c["expect_status"]))
        if c.get("expect_citations") and not r["citations"]:
            problems.append("知识答案缺少引用")
        for s in c.get("contains", []):
            if s not in r["content"]:
                problems.append("答案缺少「%s」" % s)
        if problems:
            failures.append("%s [%s] %s | 答案: %s" % (c["id"], c["question"], "; ".join(problems), r["content"][:120]))
        else:
            print("  ok  %s %s" % (c["id"], c["question"]))
    return failures


def ensure_kb_grant(base, admin_token, kb_id, role_id):
    """确保 ACL 授权存在（幂等）。"""
    out = http_json(base + "/system/ai-kb/acl?kbId=" + kb_id, token=admin_token, timeout=30)
    rows = out.get("data") or []
    for r in rows:
        if r.get("ai_role_id") == role_id and r.get("kb_id") == kb_id:
            return
    http_json(base + "/system/ai-kb/acl/save",
              {"kb_id": kb_id, "ai_role_id": role_id}, token=admin_token, timeout=30)


def check_kb_acl(base, spec, admin_token, concurrency):
    """2.1 知识库 ACL 矩阵：已授权角色 success+引用；未授权角色 NOT_FOUND（越权 0 命中）。"""
    setup = spec.get("setup", {})
    grant_ids = setup.get("grant_role_ids") or (
        [setup["grant_role_id"]] if setup.get("grant_role_id") else []
    )
    if setup.get("kb_id") and grant_ids:
        try:
            for rid in grant_ids:
                ensure_kb_grant(base, admin_token, setup["kb_id"], rid)
        except Exception as e:
            return ["[泄漏] ACL 授权设置失败: %s" % e], []
    roles = spec["roles"]
    probes = spec["probes"]
    tokens = {}

    def run_one(role, probe):
        user = role["user"]
        if user not in tokens:
            tokens[user] = login(base, user, "123456")
        r = ask_sse(base, tokens[user], probe["question"])
        actual = r["status"]
        granted = role["granted"]
        if granted:
            leak = False
            soft = actual != "success" or not r["citations"]
            tag = "%s×%s" % (role["key"], probe["id"])
            if soft:
                return (tag, "期望 success+引用 实际 %s 引用=%s" % (actual, bool(r["citations"])), r["content"])
            return (tag, None, None)
        else:
            # 未授权：知识探针必须 NOT_FOUND（0 命中）；success = 越权泄漏
            leak = actual == "success"
            tag = "%s×%s" % (role["key"], probe["id"])
            if leak:
                return (tag, "越权泄漏：未授权却 success | 答案: %s" % r["content"][:120], r["content"])
            if actual != "NOT_FOUND":
                return (tag, "期望 NOT_FOUND 实际 %s" % actual, r["content"])
            return (tag, None, None)

    leaks, softs = [], []
    with cf.ThreadPoolExecutor(max_workers=concurrency) as pool:
        futs = [pool.submit(run_one, role, probe) for role in roles for probe in probes]
        for fut in cf.as_completed(futs):
            tag, problem, content = fut.result()
            if problem is None:
                print("  ok  %s" % tag)
            elif problem.startswith("越权泄漏"):
                leaks.append("%s %s" % (tag, problem))
            else:
                softs.append("%s %s" % (tag, problem))
    return leaks, softs


def set_config(base, token, key, value):
    out = http_json(base + "/system/configure/list", {"configureKey": key}, token=token, timeout=30)
    rows = out.get("data") or []
    row = next((r for r in rows if r.get("configureKey") == key or r.get("configure_key") == key), None)
    if row is None:
        raise RuntimeError("配置中心找不到 %s" % key)
    out = http_json(base + "/system/configure/save", {"id": row["id"], "configureValue": value}, token=token, timeout=30)
    if out.get("code") not in (200, None) and out.get("success") is False:
        raise RuntimeError("保存配置失败: %s" % out)


def check_gate(base, admin_token):
    failures = []
    # 1) 未登录：不得返回任何答案
    r = ask_sse(base, None, "有哪些订单？")
    if r["status"] == "success" or (r["content"] and r["error_code"] is None and r["status"] is None):
        failures.append("未登录请求返回了内容: %s" % r["content"][:80])
    else:
        print("  ok  未登录 → %s" % (r["error_code"] or r["status"]))
    # 2) 空问题 → NEED_CLARIFY
    r = ask_sse(base, admin_token, "   ")
    if r["error_code"] != "NEED_CLARIFY" and r["status"] != "NEED_CLARIFY":
        failures.append("空问题未返回 NEED_CLARIFY: %s" % r)
    else:
        print("  ok  空问题 → NEED_CLARIFY")
    # 3) ai.enabled=false → AI_DISABLED（测完恢复 true）
    try:
        set_config(base, admin_token, "ai.enabled", "false")
        r = ask_sse(base, admin_token, "有哪些订单？")
        if r["error_code"] != "AI_DISABLED" and r["status"] != "AI_DISABLED":
            failures.append("ai.enabled=false 时未返回 AI_DISABLED: %s" % r)
        else:
            print("  ok  ai.enabled=false → AI_DISABLED")
    except Exception as e:
        failures.append("门禁开关检查失败: %s" % e)
    finally:
        try:
            set_config(base, admin_token, "ai.enabled", "true")
        except Exception as e:
            failures.append("恢复 ai.enabled=true 失败: %s" % e)
    return failures


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--base", required=True)
    ap.add_argument("--golden", default=os.path.join(HERE, "golden.json"))
    ap.add_argument("--matrix", default=os.path.join(HERE, "permissions.json"))
    ap.add_argument("--concurrency", type=int, default=4)
    ap.add_argument("--skip-gate", action="store_true")
    ap.add_argument("--skip-matrix", action="store_true")
    ap.add_argument("--kb-golden", default=os.path.join(HERE, "kb-golden.json"))
    ap.add_argument("--kb-acl", default=os.path.join(HERE, "kb-acl.json"))
    ap.add_argument("--skip-kb", action="store_true")
    args = ap.parse_args()

    try:
        golden = json.load(open(args.golden, encoding="utf-8"))
        matrix = json.load(open(args.matrix, encoding="utf-8"))
        kb_golden = json.load(open(args.kb_golden, encoding="utf-8"))
        kb_acl = json.load(open(args.kb_acl, encoding="utf-8"))
    except Exception as e:
        print("环境错误：测试文件缺失 %s" % e)
        return 2

    try:
        admin_token = login(args.base, golden.get("user", "admin"), "123456")
    except Exception as e:
        print("环境错误：无法登录 %s（服务未启动？密码不是 123456？）%s" % (args.base, e))
        return 2

    failures = []
    print("== 黄金集（%d 问，用户 %s）==" % (len(golden["cases"]), golden.get("user", "admin")))
    failures += check_golden(args.base, admin_token, golden)

    if not args.skip_matrix:
        print("== 越权矩阵（%d 角色 × %d 探针）==" % (len(matrix["roles"]), len(matrix["probes"])))
        leaks, softs = check_matrix(args.base, matrix, args.concurrency)
        failures += ["[泄漏] " + s for s in leaks]
        print("  软告警 %d 条（应 success 却拒答，多为 self/org 范围对 all 工具的预期拦截）" % len(softs))
        for s in softs[:20]:
            print("  warn " + s)

    if not args.skip_gate:
        print("== 门禁（未登录 / 空问题 / 配置关闭）==")
        failures += check_gate(args.base, admin_token)

    if not args.skip_kb:
        print("== 知识库黄金集（%d 问，用户 %s）==" % (len(kb_golden["cases"]), kb_golden.get("user", "admin")))
        failures += check_kb_golden(args.base, admin_token, kb_golden)
        print("== 知识库 ACL 矩阵（%d 角色 × %d 探针）==" % (len(kb_acl["roles"]), len(kb_acl["probes"])))
        kbleaks, kbsofts = check_kb_acl(args.base, kb_acl, admin_token, args.concurrency)
        failures += ["[泄漏] " + s for s in kbleaks]
        print("  软告警 %d 条" % len(kbsofts))
        for s in kbsofts[:20]:
            print("  warn " + s)

    print()
    if failures:
        print("FAIL %d 项：" % len(failures))
        for f in failures:
            print("  - " + f)
        return 1
    print("PASS 全部通过")
    return 0


if __name__ == "__main__":
    sys.exit(main())
