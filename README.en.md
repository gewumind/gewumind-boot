# GewuMind Boot

> **Language / 语言**：[English](README.en.md) | [中文](README.md)

**GewuMind Boot** is an **AI-driven low-code backend container** — endpoints written as
scripts, pages kept as component files, menus / roles / dictionaries / config all managed online.
Three commands from clone to a fully working backend.

![Dashboard](docs/screenshots/01-工作台.png)

- Website: https://gewumind.github.io
- AI development skill: https://github.com/gewumind/gewumind-skill
- **Docs index**: [docs/README.md](docs/README.md) (中文) · **[docs/en/README.md](docs/en/README.md)** (English)

| Doc | Topic | 中文 |
|---|---|---|
| **[Deployment](docs/en/deployment.md)** | Deploy, database, platforms, HTTPS, upgrade, backup | 部署指南 |
| **[User Guide](docs/en/user-guide.md)** | Every menu, system setting & licensing | 使用手册 |
| **[Low-code Guide](docs/en/lowcode-guide.md)** | APIs, pages, live debugging, reports, workflows | 低代码开发教程 |
| **[Development Guide](docs/en/development.md)** | Source layout, build pipeline, extension points | 二次开发指南 |
| **[AI development](docs/en/ai-development.md)** | Let an agent build it with gewumind-skill | AI开发 |
| [Architecture](docs/en/architecture.md) | Code layout, request flow, common issues | 架构说明 |

### 🎬 Video tutorials

One overview plus four ways to run it. English narration with subtitles — also playable on the
[website](https://gewumind.github.io/#videos).

[![Overview: run a backend out of the box](docs/videos/en/00-overview-16x9.png)](docs/videos/en/00-overview.mp4)

| Episode | Video | Length | Watch |
|---|---|---|---|
| EP 01 | Overview: run a backend out of the box | 00:59 | [▶ Play](docs/videos/en/00-overview.mp4) |
| EP 02 | Way 1 · Download the release and run | 00:33 | [▶ Play](docs/videos/en/01-release.mp4) |
| EP 03 | Way 2 · Run from source | 00:27 | [▶ Play](docs/videos/en/02-source.mp4) |
| EP 04 | Way 3 · Embed into an existing app | 00:21 | [▶ Play](docs/videos/en/03-embed.mp4) |
| EP 05 | Way 4 · Let AI build it | 00:40 | [▶ Play](docs/videos/en/04-ai.mp4) |

---

## Features

- **APIs as scripts** — built on magic-api: write HTTP endpoints online, hot-reload, no compile, no restart
- **Pages are component files** — pages live as `.ms` component files under `data/magic-api/component/`, read and registered as global components at startup; edit and refresh
- **Manage everything online** — menus, roles, users, dictionaries, modules, config, icons and page components, all maintained in the admin UI
- **Workflow engine** — conditional branching, CC nodes, layered rejection, per-node approval dialogs
- **Reports & messaging** — designer-based reports with Excel export; Kafka / MQTT / TCP / WebSocket / SSE / Redis
- **Security & licensing** — login/password policy, Sa-Token sessions, SSO, offline license

---

## Quick start

**Prerequisites**: JDK 17, Maven 3.8+, MySQL 8 (defaults to a `gewumind-boot` database on
`localhost:3306`, port **9089**)

Use the `.sh` scripts on Linux/macOS and the `.bat` ones on Windows — they behave identically.

### 1. Create the database and import the baseline

```sql
-- Create the database (utf8mb4 is required, the baseline assumes it)
CREATE DATABASE gewumind-boot DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

Then import [`db/init/01-baseline.sql`](db/init/01-baseline.sql) into it — any GUI
client's "run SQL file" works (Navicat / DBeaver / phpMyAdmin), or from a shell:

```bash
mysql -h127.0.0.1 -uroot -p gewumind-boot < db/init/01-baseline.sql
```

You should end up with **43 tables** plus bundled menus, roles, dictionaries, config and
page components.

### 2. Inject the database credentials

No password is hard-coded in this repo:

```bash
export SPRING_DATASOURCE_USERNAME=root
export SPRING_DATASOURCE_PASSWORD='your-database-password'
```

### 3. Build and start

```bash
mvn clean package -DskipTests
bash scripts/start.sh
```

| Endpoint | URL | Credentials |
|----------|-----|-------------|
| Admin UI | <http://localhost:9089/> | `admin` / `123456` |
| Online editor / API docs | <http://localhost:9089/magic/web> | — |
| Druid console | <http://localhost:9089/druid> | `admin` / `123456` |

Stop with `bash scripts/stop.sh`. Change the port with `SERVER_PORT=9090 bash scripts/start.sh`.

---

## About the frontend bundle

`src/main/resources/static/` (about 28 MB) is **committed to this repository**, so a fresh clone
can open the admin UI immediately — no frontend build step required. It is produced by a
separate frontend project; this repository keeps only the build output.

The bundle is produced by a separate frontend project; this repository ships **no**
rebuild script — that belongs to the kernel maintainers and requires access to the frontend
sources.

> CI scans the bundle for internal IPs and local absolute paths, and fails on any hit.

### Environments (profiles)

| Profile | Purpose | Datasource | AI keys |
|---------|---------|------------|---------|
| `dev` (default) | Local development | local MySQL, has defaults | auto-issued + self-service allowed |
| `demo` | Demos / trials | local MySQL, has defaults | auto-issued + self-service allowed |
| `online` | **Production** | **must come from environment variables** | not issued + **self-service disabled** |
| `docker` | Containers | points at the compose `db` service | not issued + self-service disabled |

Switch with:

```bash
java -jar target/gewumind-boot-app.jar --spring.profiles.active=online
# or SPRING_PROFILES_ACTIVE=online
```

In `online`, `SPRING_DATASOURCE_URL` / `_USERNAME` / `_PASSWORD` have **no defaults** — a
missing one aborts startup on purpose. Failing loudly beats silently connecting to a database
you did not mean to.

### Windows

The `.bat` scripts behave identically to the `.sh` ones:

Creating and importing the database is the same on every platform (a GUI client, or
`mysql < file.sql`), and the scripts map one to one:

```bat
scripts\start.bat
scripts\stop.bat
```

### Developing with IntelliJ IDEA

This is a standard Maven project — clone it and open it:

1. **File → Open**, select the repository root (the folder containing `pom.xml`)
2. IDEA detects it as a Maven project and downloads the dependencies
3. Confirm the SDK is **JDK 17**: `File → Project Structure → Project → SDK = 17`
4. In the Maven panel, check `com.gewumind:gewumind-boot` has resolved (it comes from `libs/`)

Run the `main` method of `com.gewumind.app.GewuMindBootApp` directly (defaults to the `dev`
profile on port 9089). To iterate on endpoints, edit the `.ms` files under `data/magic-api/` —
save and refresh the browser; no restart needed.

> The first import downloads dependencies and the kernel jar, so give it a moment. If
> `mysql-connector-j` cannot be found, hit refresh in the Maven panel (it comes in transitively
> through the kernel's pom).

---

## Local development

```bash
# Dev mode (classpath first: edit Java code and restart to take effect)
bash scripts/start.sh --dev

# Or run Maven directly
mvn spring-boot:run
```

The frontend bundle is committed, so nothing extra is needed for local development.

---

## Project layout

```
gewumind-boot/
├── pom.xml                    # depends on com.gewumind:gewumind-boot:0.3.0
├── libs/                      # kernel thin jar (standard Maven layout, committed)
├── src/main/java/com/gewumind/app/
│   ├── GewuMindBootApp.java   # bootstrap class
│   ├── config/                # /api prefix stripping, SSO bean definition fix
│   └── sso/                   # SSO entry endpoints
├── src/main/resources/
│   ├── application.yml        # this project's config (overrides the kernel's)
│   └── static/                # frontend bundle (committed; clone and go)
├── data/magic-api/            # script workspace: api / component / task / workflow / function
├── db/init/01-baseline.sql    # database baseline
├── scripts/                   # start-stop / certs (+ Windows .bat)
└── docs/architecture.md · docs/架构说明.md
```

---

## Database

**MySQL 8 is the only supported database today.** The distribution ships a single JDBC driver
(`mysql-connector-j`), and `db/init/01-baseline.sql` is MySQL syntax
(`ENGINE=InnoDB`, `utf8mb4_general_ci`, backticks).



The baseline lives in [`db/init/01-baseline.sql`](db/init/01-baseline.sql) — 43 tables plus
bundled menus, roles, dictionaries, config and page components. The `CREATE DATABASE`
statement is in [Quick start](#quick-start); resetting means `DROP DATABASE` and importing
again.

Connection settings live in the profile files under `src/main/resources/` (for example
`application-dev.yml`), and can be overridden by environment variables (recommended for
deployments):

```yaml
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/gewumind-boot?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=UTF8&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai
    username: root
    password: ******
```

| Environment variable | Description | Default |
|----------------------|-------------|---------|
| `SPRING_DATASOURCE_URL` | Datasource URL | `jdbc:mysql://localhost:3306/gewumind-boot?...` |
| `SPRING_DATASOURCE_USERNAME` | Database user | `root` |
| `SPRING_DATASOURCE_PASSWORD` | Database password | **no default, must be injected** |
| `SERVER_PORT` | Service port | `9089` |

> ✅ **No password is hard-coded in this repository.** `password` is empty and must be provided
> via `SPRING_DATASOURCE_PASSWORD`. In the `online` profile the URL and account have no
> defaults either — a missing one aborts startup on purpose.

**Using another database** (PostgreSQL / Oracle / SQL Server): add the matching driver
dependency yourself and port `db/init/01-baseline.sql` to that dialect — table options,
charset, auto-increment and comment syntax are all MySQL-specific. Any MySQL-only SQL inside
`data/magic-api/` scripts must be adapted too.

---

## AI / MCP integration (X-AI-Key)

The MCP endpoint `/mcp` and the REST publish API `/ai/**` both require the header
`X-AI-Key: <keyId>:<secret>`.

**Dev mode** (default profile `dev`) generates one key on first startup; the secret is printed
to the log **exactly once**:

```bash
bash scripts/start.sh
grep "X-AI-Key" logs/gewumind-boot-app.log
```

Disable auto-generation with `app.dev-api-key.enabled=false`.

**Self-service issuance** (requires an admin login token; available in dev / demo):

```bash
TOKEN=<token obtained after logging in>
curl -X POST http://localhost:9089/system/ai-keys/save \
  -H "token: $TOKEN" -H "Content-Type: application/json" \
  -d '{"name":"my-key","permissions":"*","rateLimit":100}'
# returns keyId + secret; the secret is shown once (only sha256 is stored)
```

Other endpoints: `GET /system/ai-keys/list`,
`POST /system/ai-keys/status?keyId=&disabled=true`, `POST /system/ai-keys/delete?keyId=`

**Production mode** (`prod` / `production` / `online` profiles):

- no auto-generation
- **self-service issuance is disabled** (HTTP 403); keys must be issued offline
- list / enable-disable / delete remain available for operations
- to re-enable self-service: `app.ai-key.self-service=true`

> Only `sha256(secret)` is stored — the plaintext cannot be recovered. Keys issued during the
> PoC stage (`secret == keyId`) still work; re-issue them before production use.

---

Other runtime settings live in the config center (`sys_configure`): AI, Kafka, MQTT, Redis,
workflow, WebSocket, SSE, TCP, password policy, etc. See the User Guide for the full list.

---

## License

- The kernel is open source under the [Apache License 2.0](LICENSE) (a [Chinese reference translation](LICENSE.zh-CN.md) is provided; the English text is authoritative).
- Some enterprise capabilities (SSO, workflow, module management, Redis / shared sessions,
  MQTT, Kafka, SSE, TCP, WS) require a commercial offline license. Without one you get a
  30-day free trial.