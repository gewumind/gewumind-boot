# AI development: driving your agent with gewumind-skill

> **Language / 语言**：[English](ai-development.md) | [中文](../zh/AI开发.md)

[GewuMind Skill](https://github.com/gewumind/gewumind-skill) packages this platform's
development knowledge as a **skill**. Install it into any AI agent (Claude Code, Cursor,
opencode, deepseek-harness…) and you describe a feature in plain language; the agent produces a
module that is **ready to publish**.

This page only covers getting it running against this project.

---

## Prerequisites

| Requirement | Notes |
|-------------|-------|
| Backend running | this project on `http://localhost:9089` |
| An X-AI-Key | needed by both MCP and the publish API — see below |
| Node 18+ | the skill's SFC compile script needs it |
| An MCP client | whatever your host agent already has; REST works without one |

---

## Step 1 — Get an X-AI-Key

Both `/mcp` and `/ai/**` require the header `X-AI-Key: <keyId>:<secret>`.

In **dev mode** one is generated on first startup, and the secret appears in the log exactly once:

```bash
grep "X-AI-Key" logs/gewumind-boot-app.log
```

Or issue one yourself from the admin UI (after signing in and getting a token):

```bash
curl -X POST http://localhost:9089/system/ai-keys/save \
  -H "token: $TOKEN" -H "Content-Type: application/json" \
  -d '{"name":"my-agent","permissions":"*","rateLimit":100}'
```

The secret is returned once; only `sha256` is stored. In production profiles self-service issuance
is disabled and keys are handed out offline.

---

## Step 2 — Install the skill

```bash
git clone https://github.com/gewumind/gewumind-skill.git
```

> On Gitee use `git clone https://gitee.com/gewumind/gewumind-skill.git` (kept in sync with GitHub).

### Claude Code

```bash
# personal level, available in every project
ln -s "$(pwd)/gewumind-skill" ~/.claude/skills/gewumind-boot

# or project level: copy it into .claude/skills/gewumind-boot/
```

### Cursor / opencode / other MCP clients

Put `SKILL.md` into the project's rules (e.g. `.cursor/rules/`) as the knowledge entry point; the
agent reads `references/` and `knowledge/` as needed. Bridge stdio clients with
`npx mcp-remote`.

---

## Step 3 — Connect the backend MCP

The backend ships an MCP server at `GET /mcp`:

```bash
claude mcp add --transport sse gewumind-boot http://localhost:9089/mcp
```

Available tools:

| Tool | Purpose |
|------|---------|
| `status_check` | Check backend reachability and version |
| `bundle_apply` | **Publish**: push generated SQL / scripts / components to the backend |
| `sql_execute` | Execute SQL |
| `file_receive` | Receive generated files |
| `data_query` | Query data |
| `docs_push` | Push design documents |

**Works without MCP too**: have the agent call `POST /api/ai/bundle/apply` with an `X-AI-Key`
header — same contract.

---

## The four-stage pipeline

```
Requirements  →  Design docs  →  Code generation  →  One-click publish
```

| Stage | Output | Notes |
|-------|--------|-------|
| 1. Requirements | `docs/requirement.md` | Scope, roles, field definitions — agree before moving on |
| 2. Design | `docs/ui.md`, `docs/database.md`, `docs/api.md` | Menu tree, screen details, schema, endpoint list; gated by a verifier |
| 3. Generation | `src/sql/**`, `src/magic-api/**`, `src/pages/*.vue` | DDL, magic-api scripts, page components |
| 4. Publish | `bundle_apply` | Applied to the running backend with a backup; refresh to see it |

Each stage stops for confirmation — **the agent will not start writing to your database
unprompted**.

---

## Putting it to work

Just say it:

> Use gewumind-boot to build a device management module: registration, heartbeat monitoring and
> firmware versions, publish it to localhost:9089

The agent produces the requirement doc → UI/database/API design → DDL + CRUD scripts + list page →
`bundle_apply`. The new menu and page show up in the admin UI afterwards.

Richer asks (multi-role approvals, scheduled tasks, reports) work too — the skill ships workflow
and report knowledge for those.

---

## How it relates to writing things by hand

Everything the skill produces is an ordinary file in this project:

- `src/sql/**` DDL → run it against your database
- `src/magic-api/**` endpoint scripts → drop them into `data/en/magic-api/api/`
- `src/pages/*.vue` page components → compiled into `data/en/magic-api/component/`

So **AI-generated and hand-written are equivalent** — there is no black box. When the agent stops,
open the files and keep editing.

Not using AI at all? Everything is doable by hand via the [user guide](architecture.md).

---

## Troubleshooting

| Symptom | Cause and fix |
|---------|---------------|
| `MCP connection rejected: invalid key` | Wrong X-AI-Key. Check `keyId` and `secret` are one pair separated by a colon |
| Publish returns `INVALID_KEY` | Same, plus check the key is not disabled |
| Agent says it cannot reach the backend | Open `http://localhost:9089/` yourself first, then check the address and port in the agent's config |
| Generated files do not appear in the UI | Check the `bundle_apply` response; refresh afterwards, since components load at load time |
| You want to review before publishing | Stop the agent at stage 3, copy the output into `data/en/magic-api/` and verify by hand, then let it publish |

---

## Related docs

- [User guide](architecture.md) — how to use each capability
- [Architecture notes](architecture.md) — code layout, request flow, common issues
- [gewumind-skill](https://github.com/gewumind/gewumind-skill) — the skill's knowledge base and
  scripts
