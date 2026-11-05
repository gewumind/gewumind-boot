# 版本对应表

用于核对 **应用 / 内核 / Skill / 数据库 / License** 的对应关系。升级前先看本表，避免版本错配。

| 应用 | 内核 | Skill | 数据库 | 产物签名 | 商业版 License | 状态 |
|---|---|---|---|---|---|---|
| 1.2.0 | 0.3.3 | 1.2.0 | `db/init/01-baseline.sql`（2026-10） | `gewumind-release-2026.pub` | 由签发中心按客户签发 | 已发布 |
| 1.2.1 | 0.3.4 | 1.2.1 | `db/init/01-baseline.sql`（2026-10） | `gewumind-release-2026.pub` | 由签发中心按客户签发 | 已发布 |
| 1.2.2 | 0.3.5 | 1.2.1 | `db/init/01-baseline.sql`（2026-10） | `gewumind-release-2026.pub` | 由签发中心按客户签发 | 已发布 |
| 2.0.0 | 0.4.0 | 2.0.0 | `db/init/01-baseline.sql` + `02-ai-2.0.sql`（2026-11） | `gewumind-release-2026.pub` | 2.x 离线 License（AI 功能位） | 已发布 |
| 2.1.0 | 0.4.1 | 2.1.0 | `db/init/01-baseline.sql` + `02-ai-2.0.sql` + `04-ai-kb-2.1.sql`（2026-11） | `gewumind-release-2026.pub` | 2.x 离线 License（AI 功能位 + `AI_KB`） | 已发布 |
| 3.0.0 | 0.5.x | 3.0.0 | 3.x 迁移脚本 | 3.0 发布公钥 | 3.x 离线 License | 规划中 |

## 规则

- 内核只随发行包提供**签名二进制**，源码不随包提供；版本以 `libs/` 下的 jar、`.sig` 和 `kernel-manifest.json` 为准。
- 2.x / 3.x 的新增能力通过离线 License 解锁，和 SSO 等现有商业能力一致；原有免费功能不因升级改变。
- 同一大版本内，minor / patch 升级不要求更换 License；跨大版本升级需对应版本的 License。
- 升级顺序：`1.x → 2.x → 3.x`。跨大版本升级前备份数据库，升级后按发布说明验证。

## 校验

```bash
scripts/verify-kernel-manifest.sh
```

`kernel-manifest.json` 记录当前内核的版本、构建信息、签名公钥与 SHA256；`SHA256SUMS` 随 Release 提供。
