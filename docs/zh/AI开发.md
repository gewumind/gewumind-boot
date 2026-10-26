# AI 开发：用 gewumind-skill 驱动你的 Agent

> **Language / 语言**：[English](../en/ai-development.md) | [中文](AI开发.md)

[GewuMind Skill](https://github.com/gewumind/gewumind-skill) 把本平台的开发知识打包成一个 **skill**，
装进任意 AI Agent（Claude Code、Cursor、opencode、deepseek-harness…）之后，
你用自然语言描述需求，Agent 按四阶段管线产出**可以直接发布的业务模块**。

本文只讲怎么在本项目上把它跑起来。

---

## 前提条件

| 条件 | 说明 |
|------|------|
| 后端已启动 | 本项目跑在 `http://localhost:9089` |
| 拿到 X-AI-Key | MCP 与发布接口都要它，见下一节 |
| Node 18+ | skill 的 SFC 编译脚本需要 |
| MCP 客户端 | 宿主 Agent 自带的即可；没有也能走 REST |

---

## 第一步：拿 X-AI-Key

`/mcp` 和 `/ai/**` 都要求请求头 `X-AI-Key: <keyId>:<secret>`。

**开发模式**首次启动时会自动生成一个，secret 只在启动日志里出现一次：

```bash
grep "X-AI-Key" logs/gewumind-boot-app.log
```

**或者**在后台自助签发（需先登录后台拿到 token）：

```bash
curl -X POST http://localhost:9089/system/ai-keys/save \
  -H "token: $TOKEN" -H "Content-Type: application/json" \
  -d '{"name":"my-agent","permissions":"*","rateLimit":100}'
```

secret 只返回一次，数据库仅保存 `sha256`。**生产 profile 下禁止自助签发**，Key 需线下发放。

---

## 第二步：安装 skill

```bash
git clone https://github.com/gewumind/gewumind-skill.git
```

> Gitee 用户可改用 `git clone https://gitee.com/gewumind/gewumind-skill.git`（与 GitHub 同步）。

### Claude Code

```bash
# 个人级：所有项目可用
ln -s "$(pwd)/gewumind-skill" ~/.claude/skills/gewumind-boot

# 或项目级：拷进项目的 .claude/skills/gewumind-boot/
```

### Cursor / opencode / 其他 MCP 客户端

把 `SKILL.md` 放进项目 rules（如 `.cursor/rules/`）作为知识入口，
Agent 会按需读取 `references/` 与 `knowledge/`。
stdio 客户端用 `npx mcp-remote` 桥接。

---

## 第三步：接上后端 MCP

后端自带 MCP Server（`GET /mcp`）：

```bash
claude mcp add --transport sse gewumind-boot http://localhost:9089/mcp
```

可用的工具：

| 工具 | 作用 |
|------|------|
| `status_check` | 检查后端连通性与版本 |
| `bundle_apply` | **一键发布**：把生成的 SQL / 脚本 / 组件下发到后端 |
| `sql_execute` | 执行 SQL |
| `file_receive` | 接收生成的文件 |
| `data_query` | 查询数据 |
| `docs_push` | 推送设计文档 |

**没有 MCP 客户端也能用**：让 Agent 调 `POST /api/ai/bundle/apply` 并带 `X-AI-Key` 头，契约相同。

---

## 四阶段管线

```
需求  →  设计文档  →  代码生成  →  一键发布
```

| 阶段 | 产出 | 说明 |
|------|------|------|
| 1. 需求 | `docs/requirement.md` | 业务边界、角色、字段口径，先对齐再往下走 |
| 2. 设计 | `docs/ui.md`、`docs/database.md`、`docs/api.md` | 菜单树、页面详情、表结构、接口清单；有校验门 |
| 3. 生成 | `src/sql/**`、`src/magic-api/**`、`src/pages/*.vue` | 建表 SQL、magic-api 脚本、页面组件 |
| 4. 发布 | `bundle_apply` | 落到运行中的后端，自动备份，刷新页面即可见 |

每一阶段结束会等确认，**不会一上来就往你的库里写东西**。

---

## 实际用法

对 Agent 说一句话即可：

> 用 gewumind-boot 做一个设备管理模块：设备登记、心跳监控、固件版本管理，发布到 localhost:9089

Agent 会依次产出：需求文档 → 界面/数据库/接口设计 → 建表 SQL + 增删改查脚本 + 列表页面 →
调用 `bundle_apply` 发布。完成后在后台就能看到新菜单和页面。

更复杂的（多角色审批、定时任务、报表）同样支持，skill 里有对应的工作流与报表知识库。

---

## 与手工开发的关系

skill 生成的产物就是本工程里的普通文件：

- `src/sql/**` 的建表语句 → 直接在数据库执行
- `src/magic-api/**` 的接口脚本 → 放进 `data/zh/magic-api/api/`
- `src/pages/*.vue` 的页面组件 → 编译后放进 `data/zh/magic-api/component/`

所以 **AI 生成的和你手写的完全等价**，没有黑盒环节：Agent 停下来时，你可以直接打开文件继续改。

不想用 AI 也可以，全部按[使用手册](使用手册.md)手工来。

---

## 排错

| 现象 | 原因与处理 |
|------|-----------|
| `MCP connection rejected: invalid key` | X-AI-Key 不对。确认 `keyId` 与 `secret` 是同一对，中间是冒号 |
| 发布返回 `INVALID_KEY` | 同上；另外确认该 key 未被禁用 |
| Agent 说连不上后端 | 先自己访问 `http://localhost:9089/` 确认服务在跑；再检查 Agent 配置的地址与端口 |
| 生成的文件没出现在后台 | 检查 `bundle_apply` 的返回；发布后需要刷新页面，组件是启动/刷新时加载的 |
| 想自己审一遍再发布 | 让 Agent 停在第 3 阶段，把产物拷进 `data/zh/magic-api/` 手动验证，确认后再让它发布 |

---

## 相关文档

- [使用手册](使用手册.md) —— 平台各项能力怎么用
- [架构说明](架构说明.md) —— 代码组织、请求流转、常见问题
- [gewumind-skill](https://github.com/gewumind/gewumind-skill) —— skill 仓库本身的知识库与脚本