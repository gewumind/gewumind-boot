# GewuMind Boot · Architecture

> **Language / 语言**：[English](architecture.md) | [中文](../zh/架构说明.md)

This document is for **users and secondary developers**. To run the project see the
[README](../../README.en.md), to use it see the [user guide](user-guide.md), and for AI-assisted
development see [AI development](ai-development.md). Here we only cover what the pieces are,
how a request flows, and where to change things.

---

## Architecture at a glance

```
Browser ──► gewumind-boot-app.jar (port 9089)
              │
              ├─ kernel jar (com.gewumind.boot.*, from libs/)
              │    magic-api container · sa-token sessions · SSO ·
              │    dynamic component loading · licensing gate
              │
              ├─ this project (src/main/java/com/gewumind/app/, 3 classes)
              │    bootstrap · /api prefix stripping · SSO entry endpoints
              │
              ├─ data/en/magic-api/     ← your APIs and page components live here
              └─ MySQL               ← schema and seed data defined by db/init/01-baseline.sql
```

## What each part is responsible for

| Module | Location | When you would touch it |
|--------|----------|-------------------------|
| **Kernel jar** | `libs/com/gewumind/gewumind-boot/` | Rarely. To change kernel capabilities (workflow, reports, licensing…) go to the kernel repository |
| **This project's code** | `src/main/java/com/gewumind/app/` | Only when changing bootstrap behaviour or interceptors — three classes in total |
| **API scripts** | `data/en/magic-api/api/` | **Writing backend endpoints.** Each `.ms` file is one endpoint, filed under `/group/name.ms` |
| **Page components** | `data/en/magic-api/component/` | **Writing frontend pages.** Each `.ms` is a Vue single-file component, organised in group folders |
| **Scheduled tasks** | `data/en/magic-api/task/` | Writing scheduled jobs |
| **Workflow definitions** | `data/en/magic-api/workflow/` | Writing workflow processes |
| **Frontend bundle** | `src/main/resources/static/` | Normally untouched. Replace wholesale when upgrading the frontend |
| **Database baseline** | `db/init/01-baseline.sql` | Imported on new environments. **Do not re-import on an existing one** |
| **Configuration** | `src/main/resources/application-*.yml` | Deployment settings; runtime-tunable options live in the admin config center |

> The `.ms` files under `data/en/magic-api/` are **the real source** for endpoints and pages: the
> backend reads them at startup, and saving from the admin editor writes back to these files.
> Edit a file, refresh the page — no rebuild required.

## How a request flows

**Calling an endpoint**

```
Browser → /api/system/security/login
       → ApiPrefixConfiguration strips the /api prefix
       → magic-api matches data/en/magic-api/api/系统管理/安全/登录.ms
       → the script runs SQL (against MySQL)
       → JSON response
```

**Loading a page**

```
Browser → /
       → static/index.html (SPA)
       → the frontend requests /system/component/runtime/list
       → the backend scans data/en/magic-api/component/**/*.ms
       → returns each component's compileJs, which the frontend registers
         as a global component and renders
```

**Publishing an AI-generated module**

```
AI agent → MCP /mcp (with X-AI-Key)
         → the bundle_apply tool
         → writes tables plus .ms files under data/en/magic-api/
         → backs up first; refresh the page and it is there
```

## Where to change what

| I want to… | Change |
|-------------|--------|
| Add a backend endpoint | Create it in the admin online editor, or add a `.ms` file under `data/en/magic-api/api/` |
| Change an endpoint's logic | Find the matching `.ms` and edit its script |
| Add a page | Create it in the admin UI (this generates a `.ms` under `data/en/magic-api/component/`) |
| Add menus / roles / dictionaries | The matching admin pages; data lands in `sys_menu` / `sys_role` / `sys_dict` |
| Change datasource or port | `src/main/resources/application-<profile>.yml`, or override via environment variables |
| Change runtime switches (AI, Kafka, Redis…) | The admin config center, stored in `sys_configure` |
| Replace the frontend | Swap `src/main/resources/static/` wholesale and rebuild |

## Environments (profiles)

| Profile | Purpose | Datasource | AI keys |
|---------|---------|------------|---------|
| `dev` (default) | Local development | local MySQL, has defaults | auto-issued + self-service allowed |
| `demo` | Demos / trials | local MySQL, has defaults | auto-issued + self-service allowed |
| `online` | **Production** | **must come from environment variables** | not issued + **self-service disabled** |
| `docker` | Containers | points at the compose `db` service | not issued + self-service disabled |

```bash
java -jar target/gewumind-boot-app.jar --spring.profiles.active=online
# or SPRING_PROFILES_ACTIVE=online
```

## Endpoint quick reference

```
GET  /                        Admin UI (SPA)
GET  /magic/web               API docs / online editor
GET  /system/security/login   Login (magic-api script, returns a token)
POST /api/system/security/login   Same, with the /api prefix stripped at the entry point
GET  /druid                   Druid console (dev / demo only)

GET  /mcp                     MCP SSE endpoint             ┐ requires X-AI-Key
POST /ai/bundle/apply         Publish a bundle             ┘
GET  /system/license/status   Licensing status
GET  /system/ai-keys/list     AI key management (admin token)
GET  /system/component/runtime/list   Page component listing
```

## Common issues

**"Port is already in use" when starting**
The script checks up front and aborts. Find the holder with `ss -ltnp | grep 9089`, or use
`SERVER_PORT=9090 bash scripts/start.sh`.

**The admin UI returns 404**
The jar has no frontend bundle. Confirm `src/main/resources/static/index.html` exists, then
re-run `mvn clean package`.

**Login says wrong username or password**
The default account is `admin` / `123456` (the frontend submits the SHA-256 hash, not the
plaintext). When testing with curl, hash the password first.

**AI endpoints return 401 / INVALID_KEY**
`/mcp` and `/ai/**` require `X-AI-Key: <keyId>:<secret>`. In dev mode one is generated at
first startup and printed to the log: `grep "X-AI-Key" logs/gewumind-boot-app.log`. You can
also issue one from the admin UI (see the README's "AI / MCP integration" section).

**Cannot connect to the database**
No password is hard-coded here; you must inject `SPRING_DATASOURCE_PASSWORD`. In the `online`
profile the URL and account have no defaults either — a missing one aborts startup on purpose,
so the app cannot quietly connect to the wrong database.

**I edited a `.ms` file but the page did not change**
Component files live under `data/en/magic-api/`; make sure the file was saved, then refresh (use
a hard refresh if the browser caches it). Changes to Java code need a restart.

**Blank page waiting for an unreachable host**
The frontend bundle breaks like this when the backend address is hard-coded. This project
requires same-origin relative paths (`VITE_APP_BASE_API` left empty): the backend and the
frontend are served from the same port.

## Changing the port

```bash
SERVER_PORT=9090 bash scripts/start.sh
# or run the jar directly
java -Dserver.port=9090 -jar target/gewumind-boot-app.jar
```