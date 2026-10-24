#!/usr/bin/env python3
"""Generate an English copy of data/magic-api by translating display names.

Keeps ids, groupIds, paths, scripts and compileJs untouched; only
group.json.name and .ms header name/description are translated.

Usage:
  python3 scripts/i18n-magic-api.py \
    [--src data/magic-api] [--out data/magic-api-en] \
    [--map data/i18n/magic-api-names.json]

The map is a JSON object:
  { "groups": {"系统管理": "System Management", ...},
    "names":  {"列表": "List", ...} }
Names with a numeric prefix (e.g. 1.1.1查询列表) fall back to the suffix.
"""
import argparse
import json
import os
import re
import shutil

SEP = "=" * 32
PREFIX = re.compile(r"^([0-9.]+)\s*(.*)$")


def translate(value, section, names):
    if not value:
        return value
    if value in names.get(section, {}):
        return names[section][value]
    for sec in ("names", "groups"):
        if value in names.get(sec, {}):
            return names[sec][value]
    match = PREFIX.match(value)
    if match:
        suffix = match.group(2)
        for sec in ("names", "groups"):
            if suffix in names.get(sec, {}):
                return match.group(1) + " " + names[sec][suffix]
    return value


def split_ms(raw):
    idx = raw.find(SEP)
    if idx < 0:
        return None, raw
    header = raw[:idx].rstrip("\r\n")
    body = raw[idx + len(SEP):].lstrip("\r\n")
    return header, body


def process(src, out, names):
    if os.path.exists(out):
        shutil.rmtree(out)
    shutil.copytree(src, out)
    total = translated = 0
    missing = set()
    for root, _, files in os.walk(out):
        for filename in files:
            path = os.path.join(root, filename)
            if filename == "group.json":
                data = json.load(open(path, encoding="utf-8"))
                before = data.get("name", "")
                data["name"] = translate(before, "groups", names)
                if data["name"] != before:
                    translated += 1
                elif before and re.search(r"[\u4e00-\u9fff]", before):
                    missing.add(before)
                total += 1
                open(path, "w", encoding="utf-8").write(
                    json.dumps(data, ensure_ascii=False, indent=2) + "\n"
                )
            elif filename.endswith(".ms"):
                raw = open(path, encoding="utf-8", errors="ignore").read()
                header_text, body = split_ms(raw)
                if header_text is None:
                    continue
                try:
                    header = json.loads(header_text)
                except Exception:
                    continue
                before = header.get("name", "")
                header["name"] = translate(before, "names", names)
                if header["name"] != before:
                    translated += 1
                elif before and re.search(r"[\u4e00-\u9fff]", before):
                    missing.add(before)
                desc = header.get("description")
                if desc:
                    header["description"] = translate(desc, "names", names)
                total += 1
                open(path, "w", encoding="utf-8").write(
                    json.dumps(header, ensure_ascii=False, indent=2)
                    + "\r\n" + SEP + "\r\n" + body
                )
    print(f"magic-api i18n: {translated}/{total} translated, {len(missing)} names missing")
    for name in sorted(missing)[:40]:
        print("  missing:", name)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--src", default="data/magic-api")
    parser.add_argument("--out", default="data/magic-api-en")
    parser.add_argument("--map", default="data/i18n/magic-api-names.json")
    parser.add_argument("--overlay", default="data/demo-en/magic-api")
    args = parser.parse_args()
    names = json.load(open(args.map, encoding="utf-8"))
    process(args.src, args.out, names)
    if args.overlay and os.path.isdir(args.overlay):
        shutil.copytree(args.overlay, args.out, dirs_exist_ok=True)
        print("overlay applied:", args.overlay)


if __name__ == "__main__":
    main()
