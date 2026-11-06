# GewuMind Boot (app)

Distribution wrapper for the GewuMind Boot kernel: bundles the kernel jar (a Maven dependency under `libs/`), the frontend, config, and the low-code `data/{zh,en}/magic-api` workspace into a deployable `gewumind-boot-app-<ver>` dist. The kernel is a **separate repo** — its source and all unit tests live at `/data/projects/magic-boot/backend`, not here.

## Commands

| What | Command |
|---|---|
| Build dist | `bash scripts/build-dist.sh` (add `--skip-build` to reuse `target/gewumind-boot-app.jar`) |
| App unit tests | none — the app has no `src/test`; all unit tests are in the kernel repo (`cd /data/projects/magic-boot/backend && mvn -o test`) |
| Release | `bash scripts/release.sh --version X.Y.Z --skill-dir <path> [--notes FILE] [--publish]` |
| Swap kernel into `libs/` | `bash scripts/install-gewumind-dep.sh <kernel.jar> <kernel.pom> --version X --sig <sig>` |
| Verify kernel manifest | `bash scripts/verify-kernel-manifest.sh <manifest.json>` |
| Run (dev) | `bash scripts/start.sh` (profile `dev`; DB via `SPRING_DATASOURCE_*` env) |

The kernel is consumed from `libs/` (a local Maven repo, `file://`), **not** `~/.m2`. When you swap the kernel jar you must update **both** `libs/com/gewumind/gewumind-boot/<ver>/` and `~/.m2/.../<ver>/` — Maven resolves the local repo first, so a stale `~/.m2` copy silently wins.

## Release gate — instance test is mandatory

**Every version ships with an instance test, or it does not ship.** Before tagging / publishing a version you must have:

1. A real business-app instance test: a fresh project under `/data1/test/` that pulls this version's source, builds the dist, runs on a new DB + port, implements a real (non-demo) requirement end-to-end via gewumind-skill, and is accepted on the target surfaces (e.g. phone browser + WeChat webview for H5).
2. A written record: `docs/instance-test/<version>.md` (requirement, environment, acceptance results, gotchas) **and** archived to the local Gitea `gewumind-instance-test` repo.
3. The Step-10 three-check: fresh install, N-1 upgrade, rollback drill — all green.

`scripts/release.sh` refuses to tag/publish if `docs/instance-test/<version>.md` is missing. Do not bypass it; if a version genuinely cannot be instance-tested (e.g. docs-only or a kernel swap with no feature change), set `GW_SKIP_INSTANCE_TEST=<reason>` and record it in the release notes.

## Conventions that get broken

- **Version coupling**: app `2.x.y` pairs with kernel `0.4.z` (`<gewumind-boot.version>`). Bump both together at release; the dist is named after the **app** version — the kernel version is only a dependency.
- **DDL**: fresh-install DDL lives in `db/init/` (zh) + `db/init/en/` (en brand overrides); upgrade DDL lives in the kernel's `db/`. Keep the zh and kernel copies of a given migration byte-identical. `sys_configure` seed rows must use `is_del=0` — a `1` makes the config invisible to the `is_del=0` read, so the toggle silently never works.
- **Signing**: the kernel jar and release artifacts are Ed25519-signed with the `release-2026` keys under `/data1/workerspace/gewumind-sign/keys/`. Never commit keys or tokens.
- **Three mirrors**: `origin`=GitHub, `gitee`=Gitee, `gitea`=local Gitea (primary source). Push via `scripts/sync-mirrors.sh`; Gitea 1.24 release-asset upload uses `POST .../releases/{id}/assets` with form field `attachment`.

## Security

- No secrets in the repo: DB passwords come from `SPRING_DATASOURCE_PASSWORD`; license files and signing keys live outside the tree (`/tmp/opencode/`, `/data1/workerspace/gewumind-sign/`).
- The kernel enforces a signed class manifest (`kernel.signature`) and per-feature license gates; do not weaken `fail-closed` or the gate packages (`license` / `sso` / `kernel`).
