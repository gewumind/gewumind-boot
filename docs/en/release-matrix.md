# Version matrix

Use this table to match **app / kernel / skill / database / license** versions before upgrading.

| App | Kernel | Skill | Database | Artifact signing | Commercial license | Status |
|---|---|---|---|---|---|---|
| 1.2.0 | 0.3.3 | 1.2.0 | `db/init/01-baseline.sql` (2026-10) | `gewumind-release-2026.pub` | Issued per customer | Released |
| 1.2.1 | 0.3.4 | 1.2.1 | `db/init/01-baseline.sql` (2026-10) | `gewumind-release-2026.pub` | Issued per customer | Released |
| 1.2.2 | 0.3.5 | 1.2.1 | `db/init/01-baseline.sql` (2026-10) | `gewumind-release-2026.pub` | Issued per customer | Released |
| 2.0.0 | 0.4.0 | 2.0.0 | `db/init/01-baseline.sql` + `02-ai-2.0.sql` (2026-11) | `gewumind-release-2026.pub` | 2.x offline license (AI features) | Released |
| 3.0.0 | 0.5.x | 3.0.0 | 3.x migrations | 3.0 release key | 3.x offline license | Planned |

## Rules

- The kernel ships as a **signed binary** only; its source is not included. The jar, `.sig` and `kernel-manifest.json` under `libs/` are the source of truth.
- New capabilities in 2.x / 3.x are unlocked by an offline license, just like SSO and the existing commercial features. Features that are free today stay free.
- Minor and patch upgrades within a major version do not require a new license; cross-major upgrades require the matching license.
- Upgrade path: `1.x → 2.x → 3.x`. Back up the database before a cross-major upgrade and verify against the release notes.

## Verify

```bash
scripts/verify-kernel-manifest.sh
scripts/verify-signature.sh libs/com/gewumind/gewumind-boot/0.3.5/gewumind-boot-0.3.5.jar
```

`kernel-manifest.json` records the kernel version, build information, signing key and SHA256; `SHA256SUMS` is published with each release.
