# GewuMind Boot · Development Guide

> **Language / 语言**：[English](development.md) | [中文](../zh/二次开发指南.md)

For **developers building on GewuMind Boot**: what this repository contains, where to make
changes, and the pitfalls worth knowing before you start.

> For using the product see the [User Guide](user-guide.md); for writing APIs and components
> see the [Low-code Guide](lowcode-guide.md); to just deploy see the [Deployment Guide](deployment.md).

---

## Contents

1. [What this repository is](#1--what-this-repository-is)
2. [Layout](#2--layout)
3. [The three Java classes](#3--the-three-java-classes)
4. [Where to make changes](#4--where-to-make-changes)
5. [Build and run](#5--build-and-run)
6. [Changing the frontend](#6--changing-the-frontend)
7. [`.ms` file programming](#7--ms-file-programming)
8. [Configuration and profiles](#8--configuration-and-profiles)
9. [Building the release](#9--building-the-release)
10. [Before you commit](#10--before-you-commit)

---

## 1 · What this repository is

**Read this first — it is the most commonly misunderstood thing about the project.**

`gewumind-boot` is an **application shell**, not the full product source:

```
gewumind-boot (this repo, git)      ← this is what you clone
├── src/main/java/        only 3 Java classes (bootstrap + 2 adapters)
├── src/main/resources/
│   ├── *.yml             configuration
│   └── static/           frontend **build output**, not source
├── data/magic-api/       low-code workspace: APIs / components / tasks / workflows (.ms)
├── db/init/              baseline schema + seed data
└── libs/                 kernel jar: gewumind-boot-0.3.2.jar

Kernel (com.gewumind.boot.*)
├── What: magic-api low-code container + sa-token auth + SSO + SPA hosting + permissions
├── Where: a jar dependency in libs/, referenced by pom.xml
└── Note: **its source is not in this repository** — changing the kernel is out of scope
```

**There are only 3 Java classes here.** The real capabilities (menus, users, roles, dictionaries,
Configuration Center, reports, workflows, Open API…) live in the kernel jar, as `.ms` scripts and
pre-built frontend assets.

### 1.1 Which path should I take?

Most users never need the source. Pick by goal:

```
                What you want to do
                        │
        ┌───────────────┼───────────────┐
        ▼               ▼               ▼
   Change kernel    Business features  Let AI write it
   or add Java      only               for you
        │               │               │
        ▼               ▼               ▼
   ① Import into     ② Download the   ③ Use
     IDEA              release and      gewumind-skill
                      develop online
```

---

#### Path ① Import into IDEA (changing the kernel / adding Java classes)

Choose this when you need to change platform behaviour (new Java endpoints, different auth,
startup logic) or want to step-debug Java code.

```bash
git clone <repo-url> gewumind-boot
cd gewumind-boot

# In IDEA: File → Open → select gewumind-boot/pom.xml
# IDEA detects the Maven project and downloads dependencies
```

**IDEA setup**

| Setting | Where | Notes |
|---|---|---|
| JDK | File → Project Structure → Project | **JDK 17+** |
| Lombok | Settings → Plugins | install and enable annotation processing |
| Run config | Run → Edit Configurations | main class `com.gewumind.app.GewuMindBootApp` |

**Database password** — use an environment variable, not the config file:

```
Run/Debug Configurations → Environment variables:
   SPRING_DATASOURCE_PASSWORD=your-password
```

**Run**:

```bash
bash scripts/start.sh --dev      # dev mode: classpath first, restart to pick up Java changes
```

> ⚠️ **Frontend source is not in this repository.** You can run and debug the Java backend
> straight from IDEA; changing the UI still requires the separate frontend project
> (see [6 · Changing the frontend](#6--changing-the-frontend)).

---

#### Path ② Download the release and develop online (recommended for business work)

Choose this when you are only building **business features** — APIs, pages, reports, approval
flows. **No IDE, no Java, no build step.**

```
1. Download    gewumind-boot-app-<ver>.tar.gz (Linux/macOS) or .zip (Windows)
2. Unpack
3. Edit config/application-dev.yml    set database URL and password
4. bash start.bat / start.sh          first start creates the schema
5. Open http://<server-ip>:9089       default admin / 123456
```

After that **all development happens in the browser**:

| Task | Where | Notes |
|---|---|---|
| Backend APIs | Online programming → Interfaces | Pure script, `Ctrl+Q` to run and debug |
| Frontend pages | Online programming → Components | Vue component, effective after refresh |
| Menus / roles / dictionaries | The admin UI | Visual configuration |
| Reports | Online programming → Reports | Declarative configuration |
| Approval flows | Online programming → Workflows | Nodes and branches |
| Generic services | Online programming → Servers / Subscribers | SSE / WebSocket / TCP / Redis … |

To roll back? Everything lives under `data/magic-api/` — **just restore from a backup**.

> 💡 **This path covers ~90% of needs**, and it includes the full online debugging experience —
> including **debug & listen**, which is unique to this project (see
> [Low-code Guide · 3.6](lowcode-guide.md#36-debug--listen)).

---

#### Path ③ Use gewumind-skill (let an agent build for you)

Choose this when you want an AI agent to produce schema SQL, API scripts, page components and
menus to spec, and publish them in one shot.

**Prerequisite**: a running instance (path ②) for the skill to publish to.

```
Skill repository: https://github.com/gewumind/gewumind-skill
```

It runs a **four-stage pipeline**:

```
Requirement  →  UI / database / API design  →  Code generation  →  Publish
 (stage 1)        (stage 2)                      (stage 3)          (stage 4)
```

Outputs: DDL, magic-api scripts, Vue components, menu and dictionary SQL, seed data.

Two connection options:

| Option | Notes |
|---|---|
| **MCP** (recommended) | the backend exposes `/mcp`; configure once |
| **REST** | `POST /api/ai/bundle/apply` with an `X-AI-Key` header |

See [AI Development](ai-development.md).

---

#### Choosing

| Your situation | Pick |
|---|---|
| Business features only (APIs, pages, reports, flows) | **②** — least friction |
| Bulk module generation by AI | **③** |
| Change the kernel, add Java classes, debug startup | **①** |
| Just want to see it running | **②**, then upgrade to ① or ③ as needed |

> 💡 **Suggested order**: get comfortable on ② first; move to ① only if you truly need it.
> ③ can be layered on top of either.

### 1.2 What "secondary development" means here

| You want to | How | Need Java? |
|---|---|---|
| Add a business API | Write a `.ms` script | No |
| Add / change a business page | Write a `.ms` component | No |
| Add menus, roles, dictionaries, settings | Admin UI, or SQL | No |
| Build reports / workflows / scheduled tasks | The editors, or `.ms` | No |
| Integrate SSO | Already implemented, configure it | No |
| Change `/api` prefix behaviour | Edit `ApiPrefixConfiguration` | Yes |
| Add your own Java endpoint / filter / job | New class in `com.gewumind.app` | Yes |
| Support a new database type | Add driver + datasource extension (path ①) | Yes |
| Change the UI overall | Need the frontend project | — |

---

## 2 · Layout

```
gewumind-boot/
├── pom.xml                     app pom (artifactId: gewumind-boot-app, version: 1.1.0)
├── libs/com/gewumind/          kernel jar + checksums
├── src/main/java/com/gewumind/app/
│   ├── GewuMindBootApp.java            bootstrap
│   ├── config/ApiPrefixConfiguration.java   /api prefix stripping
│   └── sso/SsoClientEntryController.java    SSO login/logout endpoints
├── src/main/resources/
│   ├── application.yml                  main config
│   ├── application-{dev,online,docker,demo}.yml
│   └── static/                          frontend build output (committed)
├── data/magic-api/            scripts: api / component / task / workflow / function
├── db/init/01-baseline.sql    schema + seed data + demo fixtures
├── scripts/
│   ├── start.sh / stop.sh     launch scripts (Windows .bat included)
│   ├── gen-ssl-cert.sh        self-signed certificate (.bat included)
│   └── build-dist.sh          build the release (.bat included)
├── dist/                      release output (not committed)
└── docs/                      documentation (README.md is the index, zh/ and en/)
```

---

## 3 · The three Java classes

### 3.1 `GewuMindBootApp.java` — bootstrap

```java
@SpringBootApplication(scanBasePackages = {"com.gewumind.app", "com.gewumind"})
```

`scanBasePackages` **must contain both**:

- `com.gewumind.app` — this project's classes
- `com.gewumind` — the kernel (magic-api container, auth, SPA routing fallback)

Miss either and magic-api scripts, authentication or frontend routing silently stop working.

### 3.2 `ApiPrefixConfiguration.java` — strips the `/api` prefix

The frontend request interceptor adds an `/api` prefix to **every** business request:

```js
if (config.url && !config.url.startsWith('/api') && !config.url.startsWith('http')) {
    config.url = '/api' + config.url
}
```

Production builds have no dev proxy, so the backend must strip it:

```
/api/system/security/login   →  /system/security/login
/api/ai/system-config        →  /ai/system-config
```

The prefix is configurable via `gewumind.api-prefix` (default `/api`). If you remove the prefix
from the frontend wrapper, set this to empty — **both sides must agree**.

### 3.3 `SsoClientEntryController.java` — SSO endpoints

Provides `GET /sso/login` (redirect to the IdP) and `GET /sso/logout`. When the kernel fixed a
duplicate-mapping problem it dropped these two, so they live here now. **Don't delete it.**

---

## 4 · Where to make changes

### 4.1 Adding your own Java code

Drop a new class under `com.gewumind.app` and it's picked up automatically:

```
src/main/java/com/gewumind/app/myfeature/MyController.java
```

```java
package com.gewumind.app.myfeature;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/myfeature")
public class MyController {

    @GetMapping("/hello")
    public Object hello() {
        return java.util.Map.of("ok", true);
    }
}
```

Reachable at `http://<host>:9089/myfeature/hello`.

> ⚠️ **Don't take routes under `/system`** — that prefix is taken by the kernel and will conflict.
> Add your own prefix (`/api-ext`, `/biz`) or just write the endpoint as a `.ms` script.

### 4.2 Prefer `.ms` for business features

The vast majority of requirements need **no Java at all**. Adding a full CRUD module is
covered end to end in the [Low-code Guide](lowcode-guide.md#6--crud-playbook).

| Need | Prefer |
|---|---|
| Expose a JSON endpoint | `.ms` interface |
| Admin management page | `.ms` component + menu |
| Scheduled job | `.ms` scheduled task |
| Report | `data/magic-api/report/` |
| Approval flow | `.ms` workflow |
| Genuinely Java-specific (file streams, AOP, direct pool access…) | Write Java |

### 4.3 Adding settings

See [User Guide · Configuration reference](user-guide.md#10--configuration-reference).
Runtime settings change in the admin UI with no restart.

---

## 5 · Build and run

### 5.1 Requirements

JDK 17+, MySQL 5.7+/8.0+. Nothing else is needed beyond Maven for building.

### 5.2 Common commands

```bash
# start (first run creates the schema)
SPRING_DATASOURCE_PASSWORD='your-password' bash scripts/start.sh

# stop
bash scripts/stop.sh

# rebuild
bash scripts/stop.sh
mvn -q -o package -DskipTests
bash scripts/start.sh

# dev mode (classpath first, restart to pick up Java changes)
bash scripts/start.sh --dev
```

> ⚠️ **Never overwrite the fat jar while the instance is running.**
> It is a nested jar read by random access; the JVM loads classes from it on demand. Running
> `mvn package` against a live instance makes it throw `NoClassDefFoundError` and return 404.
> The order is always **stop → package → start**. `build-dist.sh` enforces this.

### 5.3 Logs

`logs/gewumind-boot-app.log`. Start there when diagnosing startup problems.

---

## 6 · Changing the frontend

### 6.1 Current situation

`src/main/resources/static/` is **build output**, committed to the repository so a fresh clone
runs immediately. **Frontend source is not in this repository** — it lives in a separate
Vue 3 + Vite project outside version control.

### 6.2 Changing business pages (recommended, no frontend source needed)

Use `.ms` dynamic components. Edit them under Online programming → Components; saving takes
effect on **refresh**. See [Low-code Guide · 7](lowcode-guide.md#7--writing-frontend-components).

### 6.3 Changing the overall UI (needs the frontend project)

```bash
cd /path/to/frontend

# build
VITE_APP_BASE_API='' npm run build        # → dist/

# sync into this repository (delete first, then copy)
cd /path/to/gewumind-boot
bash scripts/stop.sh
rm -rf src/main/resources/static
cp -r /path/to/frontend/dist src/main/resources/static

# repackage and start
mvn -q -o package -DskipTests
bash scripts/start.sh
```

**Three constraints that must be respected:**

1. **`VITE_APP_BASE_API=''` is not optional.** The frontend's `.env.production` hard-codes an
   intranet address (e.g. `http://192.168.x.x:8089/`). This application is served same-origin, so
   override it at build time (shell env beats `.env`). CI also fails on intranet IPs and local
   paths in the output.

2. **Always delete before copying.** A plain `cp -r` leaves the previous build's hashed chunks
   behind, bloating the repository.

3. **Don't break the obfuscator config.** `vite.config.js` defines a custom
   `obfuscateSkipPreloadChunks` plugin that skips chunks containing Vite's preload glue. Breaking
   it causes `TypeError: deps.map is not a function` at runtime — the page goes white and only
   half the routes register. After changing obfuscation settings, **verify in a browser** that
   pages render, routes navigate and the console is clean.

### 6.4 Confirming which build is running

```bash
grep -o 'index-[a-z0-9]*\.js' src/main/resources/static/index.html   # in the repo
curl -s http://localhost:9089/ | grep -o 'index-[a-z0-9]*\.js'          # actually served
```

Matching hashes mean a successful deploy. A stale-looking browser page is **cache** — hard refresh.

---

## 7 · `.ms` file programming

A `.ms` file is a **JSON header + separator + source**:

```
{ "id":"...", "path":"/list", "method":"POST", ... }
================================
<source>
```

### 7.1 The separator must include `\r\n`

The backend defines `ComponentManagementController.SEPARATOR` as:

```java
private static final String SEPARATOR = "\r\n================================\r\n";
```

i.e. **CRLF + 32 `=` + CRLF**. The backend splits on `content.indexOf(SEPARATOR)`. If it does
not match — most often because the `\r\n` is missing — the backend returns the **entire file
including the JSON header** as "source", and the online editor shows raw JSON or appears blank.

Node reference:

```js
const fs = require('fs')

const SEP = '\r\n================================\r\n'

function readMs(file) {
  const content = fs.readFileSync(file, 'utf8')
  const i = content.indexOf(SEP)
  if (i < 0) {
    throw new Error(`${file}: separator mismatch (missing leading/trailing \\r\\n)`)
  }
  return {
    header: JSON.parse(content.slice(0, i)),
    source: content.slice(i + SEP.length)
  }
}

function writeMs(file, header, source) {
  fs.writeFileSync(
    file,
    JSON.stringify(header, null, 2) + SEP + source,
    'utf8'
  )
}
```

> **Saving through the admin editor is always safe** — the backend writes the file itself.
> You only need this when processing `.ms` files with your own scripts.

### 7.2 Location

```
data/magic-api/
├── api/          HTTP endpoints
├── component/    frontend dynamic components (.ms with template/script/css)
├── function/     reusable functions
├── task/         scheduled tasks
├── workflow/     workflow definitions
├── report/       report definitions
├── server/       SSE / WebSocket / TCP servers
├── subscriber/   message subscribers
└── datasource/   datasources
```

### 7.3 Compiled output

The JSON header carries `compileJs` / `compileCss`, which are **eval'd at runtime**. If you edit
the source with a script you must regenerate both, or the page won't change.

The toolchain lives in `magic-boot/frontend/sfc-node.mjs`:

```js
import { compileCode } from './frontend/sfc-node.mjs'
const { compileJs, compileCss } = compileCode(source, () => scopeId)
header.compileJs = compileJs
header.compileCss = compileCss
```

---

## 8 · Configuration and profiles

| Profile | Use |
|---|---|
| `dev` | development / intranet |
| `online` | **production (recommended)** |
| `docker` | containers |
| `demo` | demonstrations |

```bash
bash scripts/start.sh --profile online
SERVER_PORT=8080 JVM_OPTS="-Xms1g -Xmx4g" bash scripts/start.sh
```

Override secrets by environment variable, never in YAML:

```bash
SPRING_DATASOURCE_PASSWORD='real-password' bash scripts/start.sh
```

The database is created on first start from `db/init/01-baseline.sql`. It is **idempotent** —
safe to re-run.

---

## 9 · Building the release

```bash
bash scripts/stop.sh                 # required first, or the script refuses
bash scripts/build-dist.sh           # → dist/gewumind-boot-app-<version>.tar.gz + .zip

# Windows
scripts\stop.bat
scripts\build-dist.bat
```

Both platforms behave the same: read the version from the pom, run `mvn package`, assemble the
directory, then produce a `.tar.gz` and a `.zip`. The Windows version uses the built-in
`tar.exe` (needs Windows 10 1803+) for the tarball and PowerShell `Compress-Archive` for the zip.

The package name follows the **application** (`gewumind-boot-app` + the pom's `<version>`),
not the kernel — the kernel version is just a dependency.

Layout:

```
gewumind-boot-app-<version>/
├── bin/     start/stop + gen-ssl-cert (.sh and .bat)
├── libs/    gewumind-boot-app.jar
├── config/  application.yml + profiles
├── data/    magic-api (APIs and components — back this up)
├── db/      baseline SQL
├── docs/    all documentation and screenshots
├── logs/ upload/ reports/
├── DEPLOY.md
└── LICENSE / NOTICE / README
```

The launch scripts detect both the **release layout** (jar under `libs/`, config under
`config/`) and the **source layout** (jar under `target/`).

> `build-dist.*` is **not** shipped in the release — it needs Maven and the source tree.

---

## 10 · Before you commit

CI runs `mvn -B clean package` and fails on intranet IPs, secrets or local paths in the output.
Check these yourself first:

- [ ] No `192.168.x.x` in `src/main/resources/static/`
- [ ] No local absolute paths (`/data/...`) in the output
- [ ] No real passwords in `*.yml` or `.env`
- [ ] `logs/` `upload/` `reports/` `dist/` `target/` not committed (all in `.gitignore`)
- [ ] No `certs/` `*.p12` `*.jks` `*.keystore`
- [ ] New scripts are `chmod +x`
- [ ] Frontend changes synced the **whole** `static/`, not a few files

---

## Related documents

| Document | Contents |
|---|---|
| [Deployment Guide](deployment.md) | Install, platforms, upgrade, backup |
| [User Guide](user-guide.md) | Menus and settings |
| [Low-code Guide](lowcode-guide.md) | APIs, components, debugging, reports, workflows |
| [Architecture](architecture.md) | Request flow and code layout |
