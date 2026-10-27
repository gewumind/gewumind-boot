# GewuMind Boot · User Guide

> **Language / 语言**：[English](user-guide.md) | [中文](../zh/使用手册.md)

> Screenshots show the Chinese UI; append `?lang=en` to the app URL for the English UI.

For **users and implementers**: what every menu does, what every system setting means,
and what breaks if you change it.

> Deployment is in the [Deployment Guide](deployment.md); API and component development is in the
> [Low-code Guide](lowcode-guide.md); building from source is in the [Development Guide](development.md).

---

## Contents

- [1 · Sign in](#1--sign-in)
- [2 · Interface tour](#2--interface-tour)
- [3 · System settings](#3--system-settings)
- [4 · System monitoring](#4--system-monitoring)
- [5 · Open API](#5--open-api)
- [6 · Online programming](#6--online-programming)
- [7 · Reports and workflows](#7--reports-and-workflows)
- [8 · Commercial features and licensing](#8--commercial-features-and-licensing)
- [9 · Multi-datasource](#9--multi-datasource)
- [10 · Configuration reference](#10--configuration-reference)
- [11 · Permission codes](#11--permission-codes)

---

## 1 · Sign in

Open `http://<server-ip>:9089`. Default account **`admin` / `123456`**.

![Login](screenshots/00-login.png)

> **Change the default password immediately after the first sign-in.**

The login page itself is configurable from the Configuration Center: logo, title,
subtitle, background image and copyright text.

---

## 2 · Interface tour

![Dashboard](screenshots/01-dashboard.png)

| Area | Contents |
|---|---|
| Left sidebar | Menu tree, filtered by role; system logo and name on top |
| Top bar | Breadcrumb, tab bar, menu search, **notification bell**, avatar, settings |
| Main | Current page |
| Footer | Theme / watermark, controlled by the Configuration Center |

---

## 3 · System settings

### 3.1 Menu management

![Menu management](screenshots/05-menu-management.png)

The navigation skeleton. **Menus decide who sees what and what they can click.**

| Action | Notes |
|---|---|
| Add | Name, icon, route `url`, permission code, sort order |
| Edit | Change any field |
| Delete | Soft delete — the menu stops appearing |
| Pick icon | Choose from the built-in icon library; the value is written into `icon` |

**Key fields**

| Field | Notes |
|---|---|
| Name | Short label shown in the sidebar |
| Icon | Key from the icon library — pick it, don't hand-write it |
| `url` | Route path, **must start with `/`**; unique among siblings |
| Permission | Backend permission code, format `<module>:<action>` e.g. `user:view` |
| Sort | Lower comes first; use 10 / 20 / 30 to leave room |
| Visible | Off hides it from the sidebar — safer than deleting |

> **Hierarchy**: a parent menu's `url` is a prefix (e.g. `/system`) and isn't a page itself;
> only leaf menus point at real pages.

### 3.2 Icon management

![Icon management](screenshots/06-icon-management.png)

Maintains the icon library used by menu management and elsewhere. Search by name or class,
preview, add and delete. Icons are IonIcons keys such as `AddOutline`.

> Deleting an icon that a menu still references won't break anything — the menu falls back
> to a default icon, but you lose the styling.

### 3.3 Organisation

![Organisation](screenshots/07-organizations.png)

Maintains the company / department tree (`sys_office`). Select a node before adding a child —
a user must belong to an organisation.

### 3.4 Role management

![Role management](screenshots/04-role-management.png)

A role is a **set of permissions**. Order matters: **create role → tick permissions → assign to users.**

Three independent kinds:

| Kind | Effect | Where |
|---|---|---|
| Menu permissions | Which menus appear in the sidebar | Role → menu permissions |
| Button permissions | Which buttons appear on a page | Role → button permissions |
| **API permissions** | **Whether the backend allows the call** | Role → API permissions |

> ⚠️ **API permissions are the real security boundary.** Hiding a button in the UI does not
> protect the endpoint — anyone who knows the URL can still call it without the permission.
> When assigning, tick whole business modules rather than cherry-picking single codes.

> The built-in `admin` role has all permissions and is unaffected by role configuration.

### 3.5 User management

![User management](screenshots/03-user-management.png)

The "add user" form:

![Add user](screenshots/03b-user-management-add-user.png)

| Action | Notes |
|---|---|
| Add user | Login name, password, name, phone, organisation, roles, login status |
| Export | Export the list to Excel |
| Disable login | Blocks the account while keeping its data and audit trail |
| Reset password | Back to the initial password |

Required: login name, password, name, organisation, role.

> Disabling is preferable to deleting — deletion removes that user's operational history.

### 3.6 Data dictionary

![Data dictionary](screenshots/08-data-dictionary.png)

Central place for enumerations: `dict_type` defines a type (e.g. `order_status`), `dict_items`
defines its options with `value` / `label` / `sort`.

Business tables store only the **`value`** and render the `label`, so changing wording never
touches historical rows.

| Action | Notes |
|---|---|
| Move up / down | Changes display order in dropdowns |
| Disable | Keeps the option but stops offering it for new data |

### 3.7 Module management

![Module management](screenshots/09-module-management.png)

Groups menus into modules and grants permissions per module.

> **Licensed**: module management is an advanced feature. Without a licence the menu jumps to
> a "commercial licence required" page. See [8 · Commercial features](#8--commercial-features-and-licensing).

### 3.8 Message management

![Message management](screenshots/10-message-management.png)

In-app messages: announcements, to-dos, notifications.

Sending a message:

![Send message](screenshots/10b-message-management-send-message.png)

Pick recipients (searchable, multi-select), a title, a type, the body and an optional link.

**Type semantics**

| Type | Purpose | Recipient experience |
|---|---|---|
| System | Generated by the platform | Bell badge + message centre |
| Announcement | Broadcast | Same |
| To-do | Needs action | Same, clickable to jump to the task |

The bell shows the unread count; clicking it opens the message centre.

### 3.9 Configuration Center

![Configuration Center](screenshots/02-configuration-center.png)

Runtime settings. Left: the settings list with a search box and a "restart system" button.
Right: the licensing panel.

Each card shows name, key, current value and description, and offers a type-appropriate editor:

| Value type | Editor |
|---|---|
| Short text | Click to edit in place |
| Long text | Click for a text area |
| Number | Numeric input |
| Boolean | Switch |
| Choice | Dropdown |
| Image | Preview + upload / clear / restore default |
| Theme | Swatch + theme picker |
| JSON (Redis, MQTT, AI…) | Click for a structured editor |

#### Switching the skin

![Theme picker](screenshots/02-configuration-center.png)

Click the theme setting → 13 presets (Default Blue, Deep Ocean, Vivid Orange, Emerald, Romantic Purple,
China Red, Minimal Grey, Sakura Pink, Amber Gold, Midnight Black, Aurora, Dawn Red, plus Custom).
Choosing "Custom" lets you pick any colour and the system generates a full theme from it.

---

## 4 · System monitoring

### 4.1 Online users

![Online users](screenshots/11-online-users.png)

Live sessions, with the ability to **kick** a user (force logout). Useful when an account
appears to be stuck.

### 4.2 Login log

![Login log](screenshots/12-login-logs.png)

Every sign-in attempt: account, IP, time, success/failure. Use it to investigate suspicious access.

### 4.3 Operation log

![Operation log](screenshots/13-operation-logs.png)

Key write operations (create/update/delete) with operator, time, IP and affected rows. For auditing.

> Login log answers "who got in"; operation log answers "who changed what".

### 4.4 Database monitoring

![Database monitoring](screenshots/14-database-monitoring.png)

Druid console: datasource overview, active connections, slow SQL, sessions, statement stats.

Default credentials `admin / 123456` (separate from the console account) — **change or restrict it
in production**.

---

## 5 · Open API

Expose platform capabilities to third-party systems.

### 5.1 Applications

![Applications](screenshots/15-open-api-applications.png)

Each app holds its own `appKey` / `appSecret`. **The secret is shown in full only at creation.**

### 5.2 API authorisation

![API authorisation](screenshots/16-open-api-authorization.png)

Grant an app specific endpoints and rate limits. After authorisation the third party exchanges
`appKey`/`appSecret` for a token, then calls the granted endpoints.

```
Third-party system ──credentials──▶ get token
                 ──with token────▶ call authorised endpoints
```

### 5.3 Request log

![Request log](screenshots/17-open-api-request-logs.png)

Call history per app: endpoint, duration, result code, IP, time. Used for troubleshooting
and rate-limit analysis.

---

## 6 · Online programming

The built-in low-code editor. A vertical tab bar on the left selects seven resource types.

**Interfaces** — HTTP endpoint definitions

![Interfaces](screenshots/18-online-ide-api.png)

**Functions** — reusable script functions

![Functions](screenshots/18b-online-ide-functions.png)

**Scheduled tasks** — cron-triggered scripts

![Tasks](screenshots/18c-online-ide-scheduled-tasks.png)

**Subscribers** — message consumers

![Subscribers](screenshots/18d-online-ide-subscriptions.png)

**Servers** — SSE / TCP / WebSocket

![Servers](screenshots/18e-online-ide-servers.png)

**Workflows** — approval-flow definitions

![Workflows](screenshots/18f-online-ide-workflows.png)

**Components** — frontend dynamic components

![Components](screenshots/18g-online-ide-components.png)

#### Live debugging

Open any interface and run it in the editor — **no restart, no redeploy**:

![Live debugging](screenshots/18-online-ide-api.png)

- Green **▶** or `Ctrl+Q` to run; results go to the bottom panel
- `F8` resume breakpoint, `F6` step, `Alt+/` suggestions, `Ctrl+Alt+L` format, `Ctrl+E` recent
- Bottom panels: interface info · run result · debug info · run log · global params · TODO · history

> For full debugging guidance including breakpoints and **debug & listen** (a
> GewuMind Boot-specific feature), see the [Low-code Guide · Online debugging](lowcode-guide.md#3--online-debugging).

### 6.1 Components

The "components" tab maintains frontend dynamic components (`.ms` files with
template / script / style). Saving takes effect on **refresh**.

> ⚠️ If a component opens blank or shows raw JSON, its `.ms` separator is malformed
> (the backend requires `\r\n` + 32 `=` + `\r\n`). See the [Development Guide](development.md#7--ms-file-programming).

> **Note**: the "low-code" menu group (low-code / code generation / test generation / dynamic
> components) has been retired. All development capability remains in **online programming**.

---

## 7 · Reports and workflows

### 7.1 Report examples

![Report example](screenshots/19-report-example.png)

The "report examples" menu ships nine ready-made forms you can read the source of:
list, cross-tab, Chinese-style grid, conditional formatting, nested detail, multi-sheet,
cross-row merge, grouped totals, extended header.

### 7.2 Workflow demos

![Workflow demo](screenshots/18f-online-ide-workflows.png)

Approval-flow examples: leave, contract, purchase and cross-department applications, plus a
detail page — useful for understanding nodes, conditional branches and approver configuration.

> **Note**: "report designer" has no page implementation yet and its menu has been retired.
> Report capability is currently demonstrated through `data/en/magic-api/report/` and the examples above.

---

## 8 · Commercial features and licensing

There are two editions. The **basic** edition includes users, roles, menus, dictionaries,
organisations, the magic-api low-code container, dynamic components and basic CRUD.
Nine further capabilities are **commercial**.

![Licensing panel](screenshots/02-configuration-center.png)

> The Configuration Center lists each capability and its parameters. In the running app the
> **licensing panel** sits on the right — edition, validity, unlocked capabilities, machine code
> and the "upload licence file" entry.

### 8.1 The nine capabilities

| Capability | Switch | Parameters | Purpose |
|---|---|---|---|
| **Module management** | `system.module.enable` | — | Group menus into modules for per-module grants |
| **Workflow approval** | `workflow.enabled` | — | Leave/contract/purchase approval flows |
| **Redis** | `redis.enabled` | `redis.config` | Cache, distributed locks, shared sessions |
| **MQTT** | `mqtt.enabled` | `mqtt.config` | IoT / device messaging |
| **Kafka** | `kafka.enabled` | `kafka.config` | Message queue, produce/consume |
| **SSE server** | `sse.enabled` | `sse.config` | Server-to-client push |
| **TCP server** | `tcp.enabled` | — (port is in the script) | Custom-protocol long connections |
| **WebSocket server** | `ws.enabled` | `ws.config` | Bidirectional connections |
| **Single sign-on** | — | `application.yml` `sso` | Integrate with an IdP |

> ⚠️ **Every switch requires a service restart** to take effect.

### 8.2 Seeing what you have

The licensing panel on the right of the Configuration Center shows the edition, expiry,
remaining days, the unlocked capability tags (`9 / 9 available`) and your machine code.
The same data is available via:

```bash
curl -s http://<host>:9089/api/system/license/status
```

### 8.3 Trial

- The trial starts on first run of a machine, **30 days** by default (`app.license-trial-days`)
- Everything is unlocked during the trial
- On expiry it falls back to basic; commercial menus jump to a "licence required" page
- The start time is recorded in `license.trial.startedAt` — **do not edit it by hand**

> The trial is per-machine. Reinstalling resets it — an inherent limit of offline licensing.
> A vendor-issued licence file is bound to the machine code and is unaffected.

### 8.4 Requesting and activating a licence

**Step 1 — send the machine code to the vendor**

Copy it from the "machine code" area of the panel, e.g.

```
351f465a-30bd-2e07-ea28-57c0ed7fbb29
```

> ⚠️ The fingerprint is derived from system identity + NIC MAC. Moving to a new machine or
> changing NICs changes it, and the licence must be reissued.

**Step 2 — upload the licence file**

Click "upload licence file", choose the vendor's `license.json`, confirm. Validation
**takes effect immediately, no restart**. A failed validation **does not overwrite** the
existing file.

**Step 3 — confirm**

The panel now shows the advanced edition with customer, licence id, validity dates and
the number of unlocked capabilities.

### 8.5 Production notes

| Check | Notes |
|---|---|
| Machine-code stability | Cloud migration or a NIC change invalidates it — reissue required |
| Clock accuracy | A rolled-back system time affects expiry; the panel raises a clock-anomaly warning |
| Renewal | Renew before expiry; capabilities lock when it lapses |
| Back up the file | Keep `license.json` with your database backups |

> Licensing is **offline**: only the public key is used to verify the signature. No network,
> no activation server.

### 8.6 FAQ

**The panel says "basic" but I never bought anything?**
The trial ended. Check the expiry date, or contact the vendor.

**Upload says validation failed?**
Usually the `license.json` doesn't match the current machine code. Send the current code again.

**What happens on expiry?**
Commercial capabilities lock and their menus show "licence required"; stored data is untouched.

**My machine code changed?**
NIC change or VM migration. Send the new code to the vendor; the old file becomes invalid.

**Can I extend the trial myself?**
Not advisable. The start time is recorded in two places and tampering is detected.

> For the **scripting API** of these capabilities, see
> [Low-code Guide · Commercial features](lowcode-guide.md#11--commercial-features-in-depth).

---

## 9 · Multi-datasource

The platform connects to **MySQL** by default (the release bundles only the MySQL driver).
To add another database:

> To learn *how to add a datasource*, read this chapter.
> For the **scripting API**, see [Low-code Guide · 5.8](lowcode-guide.md#58-multi-datasource).

### 9.1 Two ways to configure

**A · `application.yml` (fixed datasources)**

```yaml
gewumind:
  datasource:
    master:                        # any key name; scripts reference it by this name
      url: jdbc:mysql://localhost:3306/gewumind-boot?characterEncoding=UTF8&allowPublicKeyRetrieval=true
      username: root
      password: your-password
      driver-class-name: com.mysql.cj.jdbc.Driver
    analytics:
      url: jdbc:postgresql://10.0.0.9:5432/analytics
      username: postgres
      password: your-password
      driver-class-name: org.postgresql.Driver
```

**Restart the service** after editing.

**B · Online (add at runtime)**

Online programming → **datasource** tab → add one with a name, JDBC URL and credentials.
Takes effect **immediately**, no restart — handy for ad-hoc needs.

### 9.2 Using a non-MySQL database

The release ships **only the MySQL driver**. For other databases, add the driver and rebuild:

| Database | Maven coordinates |
|---|---|
| PostgreSQL | `org.postgresql:postgresql:42.7.3` |
| SQL Server | `com.microsoft.sqlserver:mssql-jdbc:12.6.1.jre11` |
| Oracle | `com.oracle.database.jdbc:ojdbc11:23.4.0.24.05` |
| DM (达梦) | `com.dameng:DmJdbcDriver18:8.1.3.140` |
| KingBase (人大金仓) | `cn.com.kingbase:kingbase8:8.6.0` |

```bash
bash scripts/stop.sh
mvn -q -o package -DskipTests
bash scripts/start.sh
```

> Supporting a database whose driver is not provided at all (ClickHouse, TDengine…) requires
> writing your own datasource extension — see the Development Guide and magic-api's official
> custom-datasource documentation.

### 9.3 Verifying

```bash
grep -i "datasource\|数据源" logs/gewumind-boot-app.log | head
```

Or try it from a script: `return db.analytics.select('select 1')`.

### 9.4 FAQ

| Symptom | Cause |
|---|---|
| `ClassNotFoundException: com.mysql...` | Driver not packaged — check the dependency and rebuild |
| `The driver could not be found` | Driver incompatible with the JDK (old ojdbc is JDK 8 only) |
| Connection timeout | Network unreachable, or blocked by firewall / security group |
| `Public Key Retrieval is not allowed` | MySQL 8 — add `allowPublicKeyRetrieval=true` to the URL |
| `db.xxx` undefined in a script | Key name doesn't match the configured name |

---

## 10 · Configuration reference

> These are the built-in settings. The "restart" column is **yes** only if the platform says so.

### 10.1 Brand and appearance

| Key | Name | Default | Description | Restart |
|---|---|---|---|---|
| `system.name` | System name | `GewuMind Boot` | Sidebar, login page, browser title | No |
| `system.logo` | System logo | `/logo-mark.svg` | Sidebar and login icon | No |
| `system.theme` | Default skin | `custom` | One of the presets, or `custom` | No |
| `system.theme.color` | Custom theme colour | `#4f46e5` | Only used when `system.theme=custom` | No |
| `system.ui.size` | Default UI size | `small` | `small` / `medium` / `large` | No |

#### The three logo actions

![Configuration Center](screenshots/02-configuration-center.png)

| Action | Effect |
|---|---|
| **Upload** | Use your uploaded image (256×256 transparent PNG recommended, ≤2MB) |
| **Clear** | **Genuinely empties it** — no logo, the sidebar falls back to the name's first letter |
| **Restore default** | Back to the built-in `/logo-mark.svg` |

> Uploaded images are stored as Base64 in the database, so replacing one **cannot be undone** —
> upload again or restore the default.
> The three actions are independent: clearing does not restore the default; use "restore default"
> when you want it back.

### 10.2 Login page appearance

| Key | Name | Default | Description | Restart |
|---|---|---|---|---|
| `system.login.bg` | Login background | empty | Falls back to the built-in gradient | No |
| `system.login.slogan` | Main title | `加速您的开发世界` | Large heading | No |
| `system.login.subtitle` | Subtitle | `轻松启动您的创意` | Under the heading | No |
| `system.login.copyright` | Copyright | `© 2026 GewuMind` | Footer | No |

### 10.3 Security policy

| Key | Name | Default | Description | Restart |
|---|---|---|---|---|
| `verification-code.enable` | Login captcha | `false` | Require a captcha at sign-in | No |
| `password.strength` | Password strength | `2` | `1` = weak (no rule); `2` = strong (≥8 chars, ≥3 of upper/lower/digit/symbol) | No |
| `password.expiry.enable` | Password expiry | `false` | Force a change when expired | No |
| `password.expiry.days` | Expiry days | `60` | Used with the above | No |
| `watermark.enable` | Watermark | `false` | Overlay a screenshot-deterrent watermark | No |

> Setting strength to "strong" does not affect existing weak passwords — only new and changed ones.
> Keep captcha off on an intranet; always on it when publicly exposed.

### 10.4 Runtime switches

| Key | Name | Default | Description | Restart |
|---|---|---|---|---|
| `system.auto-restart.enable` | Auto restart | `false` | Restart the service on a schedule | No |
| `system.auto-restart.cron` | Auto-restart cron | `0 0 1 * * ?` | 01:00 daily; only used when the above is on | No |
| `system.module.enable` | Module management | `false` | **Licensed** capability | No |

> ⚠️ Auto-restart interrupts online users — enable it only in a maintenance window.

### 10.5 Advanced services (JSON)

Commercial capabilities. Enable the matching `*.enabled` switch and fill in `*.config`.

| Key | Description | Key parameters |
|---|---|---|
| `redis.enabled` / `redis.config` | Redis cache | `host` `port` `password` `database` `pool.max-active` |
| `mqtt.enabled` / `mqtt.config` | MQTT | `broker` `client-id` `username` `password` `timeout` `keepalive` |
| `kafka.enabled` / `kafka.config` | Kafka | `bootstrap-servers` `producer.acks` `producer.retries` `consumer.group-id` `consumer.auto-offset-reset` |
| `ws.enabled` / `ws.config` | WebSocket server | `wsPort` `wsPath` `wssEnabled` `wssPort` `keystore` `keystorePassword` `keystoreType` `keyAlias` |
| `sse.enabled` / `sse.config` | SSE server | `path` `timeout` |
| `tcp.enabled` | TCP server | port number |
| `sa-token.redis.enabled` | Shared login via Sa-Token Redis | Requires Redis first |
| `workflow.enabled` | Workflow | On by default |

![Redis and friends](screenshots/02-configuration-center.png)

> ⚠️ These are **JSON** structures — click the setting for a structured editor.
> Fields marked as passwords take no input to mean "leave unchanged". Save only after
> "test connection" succeeds.

### 10.6 Licensing

| Key | Name | Description |
|---|---|---|
| `license.trial.startedAt` | Trial start time | Licensing related — do not edit |
| `license.lastSeenAt` | Last seen time | Licensing related — do not edit |

---

## 11 · Permission codes

Format `<module>:<action>`. Tick what a role needs.

| Module | Codes |
|---|---|
| User | `user:view` `user:save` `user:delete` `user:change:login:status` |
| Role | `role:view` `role:save` `role:delete` |
| Menu | `menu:view` `menu:save` `menu:delete` `menu:icon:save` `menu:icon:delete` |
| Organisation | `office:view` `office:save` `office:delete` |
| Dictionary | `dict:view` `dict:save` `dict:delete` `dict:items:view` `dict:items:save` `dict:items:delete` `dict:items:sort:up` |
| Configuration Center | `configure:view` `configure:save` `configure:delete` |
| Message | `message:view` |
| Online users | `online:view` `online:logout` |
| Module | `module:view` `module:save` `module:delete` |

> **Order for a new role**: menu permissions (what they see) → button permissions (what they
> can press) → API permissions (what the backend allows). All three are needed —
> especially **API permissions**, or buttons appear but every click returns 403.

---

## Related documents

| Document | Contents |
|---|---|
| [Deployment Guide](deployment.md) | Install, platforms, upgrade, backup |
| [Low-code Guide](lowcode-guide.md) | APIs, pages, live debugging, reports, workflows |
| [Development Guide](development.md) | Building from source, architecture, extension |
| [AI Development](ai-development.md) | Let an agent build with gewumind-skill |
