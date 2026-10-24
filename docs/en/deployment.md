# GewuMind Boot · Deployment Guide

> **Language / 语言**：[English](deployment.md) | [中文](../zh/部署指南.md)

For **implementers and operators**: getting it running, multi-platform, database setup,
HTTPS, upgrade and backup.

> Functionality is covered by the [User Guide](user-guide.md); API and component development
> by the [Low-code Guide](lowcode-guide.md); building from source by the [Development Guide](development.md).

---

## Contents

1. [Requirements](#1-requirements)
2. [Quick start](#2-quick-start)
3. [Database](#3-database)
4. [Configuration](#4-configuration)
5. [Deployment platforms](#5-deployment-platforms)
6. [HTTPS and certificates](#6-https-and-certificates)
7. [Production checklist](#7-production-checklist)
8. [Upgrading](#8-upgrading)
9. [Backup and restore](#9-backup-and-restore)
10. [Troubleshooting](#10-troubleshooting)

---

## 1. Requirements

| Item | Requirement | Notes |
|---|---|---|
| JDK | **17 or later** | Spring Boot 3.2 baseline; older JDKs fail to start |
| MySQL | 5.7+ / 8.0+ | needs `utf8mb4` |
| Memory | 2GB+ | default `-Xms512m -Xmx2g` |
| Port | `9089` by default | configurable; must be free |
| Disk | 2GB+ | fat jar (118MB), logs, uploads, reports |

> You do **not** need Node.js, npm or Maven — the release is a pre-built fat jar.
> Those are only required when building from source (see the [Development Guide](development.md)).

---

## 2. Quick start

### 2.1 Get the package

| Platform | File |
|---|---|
| Linux / macOS | `gewumind-boot-app-<ver>.tar.gz` |
| Windows | `gewumind-boot-app-<ver>.zip` |

Both contain exactly the same content.

### 2.2 Unpack

```bash
tar -xzf gewumind-boot-app-<ver>.tar.gz      # Windows: just unzip
```

### 2.3 Configure the database

Edit `config/application-dev.yml`:

```yaml
spring:
  datasource:
    url: jdbc:mysql://localhost:3306/gewumind-boot?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=UTF8&allowPublicKeyRetrieval=true&serverTimezone=Asia/Shanghai
    username: root
    password: your-password
```

> Do **not** hard-code the password in this file — use an environment variable instead
> (see [4.3](#43-passwords)).

### 2.4 Initialise the database

The package ships `db/init/01-baseline.sql`. Pick one:

**Option A · let the app create it (recommended for first run)**

`start.sh` executes the baseline script on first start and seeds the data. Nothing to do.

**Option B · import manually**

```bash
mysql -uroot -p gewumind-boot < db/init/01-baseline.sql
```

> Don't do both. If you import manually, a "table already exists" notice at startup is normal.

> ⚠️ `01-baseline.sql` contains **platform tables only** (system tables, menus, dictionaries,
> offices). It does **not** include business tables (`t_*`). A business project should ship its
> own `db/init/02-<business>.sql` and import `01` → `02` in order; otherwise business APIs will
> all fail on a fresh environment.

### 2.5 Start

```bash
bash start.sh          # Linux / macOS
start.bat              # Windows (or just double-click)
```

You should see:

```
✓ started  http://localhost:9089
  Admin     http://localhost:9089/        (default admin / 123456)
  Magic-Web http://localhost:9089/magic/web
  Druid     http://localhost:9089/druid   (admin / 123456)
```

Log file: `logs/gewumind-boot-app.log`

### 2.6 Sign in

Open `http://<server-ip>:9089` in a browser.

![Login](../screenshots/00-登录页.png)

Default account **`admin` / `123456`** — **change it immediately** in the user list.

### 2.7 Stop

```bash
bash stop.sh           # Windows: stop.bat
```

---

## 3. Database

### 3.1 Create the database

```sql
CREATE DATABASE gewumind-boot DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
```

**`utf8mb4` is required** — otherwise emoji, non-CJK characters and uploaded filenames
break or garble.

### 3.2 Compatibility

- **MySQL 8.0** — `allowPublicKeyRetrieval=true` is required in the URL, otherwise you get
  `Public Key Retrieval is not allowed`.
- **MySQL 5.7** — the 8.x JDBC driver connects fine.

### 3.3 Other databases

The release bundles **only the MySQL driver**. To use PostgreSQL / Oracle / SQL Server /
DM / KingBase, add the driver to `pom.xml`, rebuild, and configure the datasource —
see the [User Guide · Multi-datasource](user-guide.md#9-multi-datasource).

### 3.4 Connection pool

HikariCP, configured under `spring.datasource.hikari`. Suggested production values:

```yaml
maximum-pool-size: 20        # keep in step with the DB's max_connections
minimum-idle: 5
connection-timeout: 30000
```

---

## 3.5 Internationalization

**Database (deployment-level, pick one)**
- Chinese: `01-baseline.sql` + `02-seed-zh.sql` (no-op)
- English: `01-baseline.sql` + `02-seed-en.sql`
- Existing Chinese DB: `upgrade-en.sql`

**Frontend**
- Open `?lang=en`, or run `localStorage.gw_lang='en'` and refresh
- Language pack: `data/i18n/<lang>.json` (see `en.json`); copy and translate values
- Kernel message override: `data/i18n/messages_<lang>.properties`
- Pack endpoint: `POST /api/i18n/pack {"lang":"en"}` → reads `data/i18n/en.json`

**Limits**
- DOM-level translation; business data is not translated; use `patterns` for dynamic strings

## 4. Configuration

### 4.1 Profiles (environments)

| Profile | Use |
|---|---|
| `dev` | development / intranet, verbose logs and SQL |
| `online` | **production (recommended)** |
| `docker` | containers |
| `demo` | demonstrations |

```bash
bash start.sh --profile online
```

### 4.2 Common startup options

```bash
SERVER_PORT=8080 bash start.sh                        # change port
JVM_OPTS="-Xms1g -Xmx4g" bash start.sh                # heap
SERVER_PORT=8080 JVM_OPTS="-Xms1g -Xmx4g" bash start.sh --profile online
```

### 4.3 Passwords

Never put secrets in a config file — override by environment variable:

```bash
SPRING_DATASOURCE_PASSWORD='real-password' bash start.sh
```

| Variable | Overrides |
|---|---|
| `SPRING_DATASOURCE_URL` | `spring.datasource.url` |
| `SPRING_DATASOURCE_USERNAME` | `spring.datasource.username` |
| `SPRING_DATASOURCE_PASSWORD` | `spring.datasource.password` |

In production put these in a systemd unit or a Docker env file, never in version control.

### 4.4 Runtime configuration

Port and database connection are **startup** settings (`config/*.yml`).
System name, logo, theme, captcha and watermark are **runtime** settings, changed in the
[Configuration Center](user-guide.md#39-configuration-center) with no restart.

---

## 5. Deployment platforms

### 5.1 Linux (systemd, production)

`/etc/systemd/system/gewumind-boot.service`:

```ini
[Unit]
Description=GewuMind Boot
After=network.target mysql.service

[Service]
Type=simple
User=gewumind
WorkingDirectory=/opt/gewumind-boot
Environment="SERVER_PORT=9089"
Environment="JVM_OPTS=-Xms1g -Xmx4g"
EnvironmentFile=/opt/gewumind-boot/.env     # SPRING_DATASOURCE_PASSWORD etc.
ExecStart=/bin/bash start.sh
ExecStop=/bin/bash stop.sh
Restart=on-failure
RestartSec=10

[Install]
WantedBy=multi-user.target
```

```bash
sudo systemctl daemon-reload
sudo systemctl enable --now gewumind-boot
sudo journalctl -u gewumind-boot -f
```

### 5.2 Linux (bare metal)

Run `./start.sh` and keep the session alive with `nohup`, `screen` or `tmux`.

### 5.3 macOS

Identical to Linux (the `.sh` scripts are portable). Note macOS ships an older bash 3.2,
which the scripts already accommodate.

### 5.4 Windows

```bat
start.bat
stop.bat
```

Or PowerShell:

```powershell
$env:SERVER_PORT="9089"
$env:SPRING_DATASOURCE_PASSWORD="real-password"
.\start.bat
```

> **Notes**
> - Put the JDK `bin` on `PATH`, otherwise you get `'java' is not recognized`.
> - Closing the console window kills the process; for a permanent service use
>   [NSSM](https://nssm.cc/).
> - `.bat` cannot use the `VAR=value command` prefix form; set variables with `set`
>   or from PowerShell.

### 5.5 Docker

The release ships no Dockerfile; this minimal one is enough (context = unpacked directory):

```dockerfile
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY libs/gewumind-boot-app.jar app.jar
COPY config/ config/
COPY data/ data/
COPY db/ db/
EXPOSE 9089
ENV SERVER_PORT=9089 \
    JAVA_OPTS="-Xms512m -Xmx2g"
ENTRYPOINT ["sh","-c","exec java $JAVA_OPTS -Dserver.port=$SERVER_PORT -jar app.jar --spring.config.additional-location=file:./config/ --spring.profiles.active=docker"]
```

```bash
docker build -t gewumind-boot:1.1.0 .
docker run -d --name gewumind -p 9089:9089 \
  -e SPRING_DATASOURCE_PASSWORD='real-password' \
  -v gewumind-data:/app/data \
  -v gewumind-upload:/app/upload \
  gewumind-boot:1.1.0
```

> ⚠️ **You must mount a persistent volume for `data/`.** It holds every API and component
> you write — delete the container without it and they are gone.

### 5.6 Multiple instances

Run two instances on different ports against the same database:

```bash
SERVER_PORT=9089 bash start.sh
cd /opt/gewumind-boot-2 && SERVER_PORT=9090 bash start.sh
```

For shared login sessions across instances, enable Redis and turn on
`sa-token.redis.enabled` in the Configuration Center.

---

## 6. HTTPS and certificates

### 6.1 Self-signed certificate (fine for an intranet)

```bash
bash bin/gen-ssl-cert.sh              # Linux / macOS → ./certs
bin\gen-ssl-cert.bat certs 30         # Windows (uses the JDK's keytool, no OpenSSL needed)
```

Both produce `certs/keystore.p12` and print the password to paste into your config.

### 6.2 Enable it

`config/application.yml`:

```yaml
server:
  ssl:
    enabled: true
    key-store: file:./certs/keystore.p12
    key-store-password: your-password
    key-store-type: PKCS12
```

> **Must be a `file:` path**, not `classpath:` — certificates are not bundled into the jar.

### 6.3 Production certificates

Terminate TLS at Nginx/Caddy and proxy to the backend:

```nginx
server {
    listen 443 ssl;
    server_name your.domain.com;
    ssl_certificate     /etc/nginx/cert/fullchain.pem;
    ssl_certificate_key /etc/nginx/cert/privkey.pem;

    location / {
        proxy_pass http://127.0.0.1:9089;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-Proto $scheme;
    }
}
```

With HTTPS on, the browser switches WebSocket to `wss://` automatically.

---

## 7. Production checklist

- [ ] Default password `123456` changed
- [ ] Default/low-privilege accounts removed or renamed
- [ ] Database password injected via environment variable, not in a config file
- [ ] `config/*.yml` and `.env` not committed to version control
- [ ] Started with `--profile online`
- [ ] `-Xms` equals `-Xmx` (avoids heap resizing pauses)
- [ ] Log rotation configured (otherwise `logs/` fills the disk)
- [ ] `data/`, `upload/`, `db/` included in backups
- [ ] HTTPS configured, or the network is trusted intranet only
- [ ] Port 9089 firewalled (ideally internal only)
- [ ] `/druid` access restricted (default `admin/123456` — change it)
- [ ] One restart tested end to end, including boot-time autostart

---

## 8. Upgrading

```bash
bash stop.sh                                # 1. stop first — see the warning
cp -r data data-backup-$(date +%F)           # 2. back up the low-code workspace
mysqldump -uroot -p gewumind-boot > db-backup-$(date +%F).sql   # 3. back up the DB

tar -xzf gewumind-boot-app-1.1.0.tar.gz     # 4. unpack the new version
#    carry over config/application.yml, especially the datasource and password

bash start.sh --profile online              # 5. start
```

> ⚠️ **Always stop before upgrading.**
> The Spring Boot fat jar is a nested-jar structure read by random access while the JVM runs.
> **Replacing the jar while the service is running makes the live instance randomly throw
> `NoClassDefFoundError` / `ClassNotFoundException` and return 404.** This is not a bug in the
> new version — it is the inevitable result of overwriting a jar in place.
> The order is always **stop → replace → start**.

### 8.1 Schema changes

New baseline scripts ship in `db/` (e.g. `02-xxx.sql`); apply them manually. Baseline scripts
are **idempotent** (`CREATE TABLE IF NOT EXISTS` / `INSERT ... ON DUPLICATE`), so re-running is safe.

> **Keep business and platform baselines separate**: `01-baseline.sql` is a platform asset and is
> replaced wholesale on upgrade. Business schema/seed data belongs in `db/init/02-<business>.sql`,
> versioned by the project — this way upgrading the kernel never overwrites business data.

---

## 9. Backup and restore

### 9.1 What to back up

| Content | Location | Importance |
|---|---|---|
| Database | MySQL | ★★★ all business data, users, menus, config |
| Low-code workspace | `data/magic-api/` | ★★★ every API and component |
| Uploads | `upload/` | ★★ logos, attachments, images |
| Reports output | `reports/` | ★ generated report files |
| Configuration | `config/` | ★★ datasource, port, HTTPS |

> `logs/` needs no backup.

### 9.2 Example backup script

```bash
#!/bin/bash
# backup.sh
set -e
TS=$(date +%Y%m%d-%H%M%S)
DEST="/backup/gewumind-$TS"
mkdir -p "$DEST"

mysqldump -uroot -p"$MYSQL_PWD" gewumind-boot > "$DEST/db.sql"
tar -czf "$DEST-data.tar.gz" data upload config
echo "Backup complete: $DEST"
```

crontab:

```cron
0 2 * * * /opt/gewumind-boot/backup.sh
```

### 9.3 Restore

```bash
bash stop.sh
mysql -uroot -p gewumind-boot < db.sql
tar -xzf data.tar.gz
bash start.sh
```

---

## 10. Troubleshooting

### Q: `'java' is not recognized` / `java: command not found`

JDK is not installed or not on `PATH`. Install JDK 17+ and add `$JAVA_HOME/bin` to `PATH`.

### Q: `Port 9089 was already in use`

The script **aborts with a clear error** rather than falsely reporting success.
Change the port or find the holder:

```bash
ss -ltnp | grep 9089
SERVER_PORT=9090 bash start.sh
```

### Q: `UnsupportedClassVersionError` / `class file version 61.0`

JDK too old. This project requires **17+**.

### Q: `Access denied for user` / `Public Key Retrieval is not allowed`

MySQL 8 authentication. Confirm `allowPublicKeyRetrieval=true` is in the URL.

### Q: Site returns 404 / `NoClassDefFoundError` after a successful start

Almost always "the jar was replaced while running". Run `stop.sh` then `start.sh` —
see the warning in [8. Upgrading](#8-upgrading).

### Q: Can sign in but the menu is empty

- Empty menu → the role has no menu permissions, or the frontend bundle doesn't match the backend
- 403 on an API → the role is missing that permission code. Verify with `admin` first

### Q: Everything under `data/magic-api/` was lost

Check the container has a persistent volume (see [5.5](#55-docker)), or that the directory
was not deleted by accident.

### Q: How do I confirm which build is running?

```bash
curl -s http://localhost:9089/ | grep -o 'index-[a-z0-9]*\.js'   # served entry
unzip -l libs/gewumind-boot-app.jar | grep 'static/index.html'    # frontend inside jar
```

Matching hashes means the deploy succeeded. A stale-looking page in the browser is **cache** —
hard refresh.

---

## Related documents

| Document | Contents |
|---|---|
| [User Guide](user-guide.md) | Every menu, every system setting, licensing |
| [Low-code Guide](lowcode-guide.md) | Writing APIs, pages, live debugging, reports, workflows |
| [Development Guide](development.md) | Building from source, architecture, extension points |
| [Architecture](architecture.md) | How requests flow, where things live |
