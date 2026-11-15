# Version matrix

Use this table to match **app / kernel / skill / database / license** versions before upgrading.

| App | Kernel | Skill | Database | Artifact signing | Commercial license | Status |
|---|---|---|---|---|---|---|
| 1.2.0 | 0.3.3 | 1.2.0 | `db/init/01-baseline.sql` (2026-10) | `gewumind-release-2026.pub` | Issued per customer | Released |
| 1.2.1 | 0.3.4 | 1.2.1 | `db/init/01-baseline.sql` (2026-10) | `gewumind-release-2026.pub` | Issued per customer | Released |
| 1.2.2 | 0.3.5 | 1.2.1 | `db/releases/1.2.2/{zh,en}/full.sql` (2026-11) | `gewumind-release-2026.pub` | Issued per customer | Released |
| 2.0.0 | 0.4.0 | 2.0.0 | `db/releases/2.0.0/{zh,en}/full.sql` (2026-11) | `gewumind-release-2026.pub` | 2.x offline license (AI features) | Released |
| 2.1.0 | 0.4.1 | 2.1.0 | `db/releases/2.1.0/{zh,en}/full.sql` (2026-11) | `gewumind-release-2026.pub` | 2.x offline license (AI features + `AI_KB`) | Released |
| 2.2.0 | 0.4.2 | 2.2.0 | `db/releases/2.2.0/{zh,en}/full.sql` (2026-11) | `gewumind-release-2026.pub` | 2.x offline license (AI features + `AI_KB` + `AI_H5`) | Released |
| 2.3.0 | 0.4.2 | 2.3.0 | `db/releases/2.3.0/{zh,en}/full.sql` (2026-11) | `gewumind-release-2026.pub` | Three tiers: Standard (non-AI) / Enterprise (all) | Current |
| 3.0.0 | 0.5.x | 3.0.0 | 3.x migrations | 3.0 release key | 3.x offline license | Planned |

## Rules

- The kernel ships as a **signed binary** only; its source is not included. The jar, `.sig` and `kernel-manifest.json` under `libs/` are the source of truth.
- New capabilities in 2.x / 3.x are unlocked by an offline license, just like SSO and the existing commercial features. Features that are free today stay free.
- Minor and patch upgrades within a major version do not require a new license; cross-major upgrades require the matching license.
- Upgrade path: `1.x → 2.x → 3.x`. Back up the database before a cross-major upgrade and verify against the release notes.
- Database scripts are archived per version under `db/releases/<version>/<lang>/`: `full.sql` for a fresh install, `upgrade-from-<source>.sql` for in-place upgrades. See `db/releases/README.md`.

## Verify

```bash
scripts/verify-kernel-manifest.sh
scripts/verify-signature.sh libs/com/gewumind/gewumind-boot/0.4.2/gewumind-boot-0.4.2.jar
```

`kernel-manifest.json` records the kernel version, build information, signing key and SHA256; `SHA256SUMS` is published with each release.
