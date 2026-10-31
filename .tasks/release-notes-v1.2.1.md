# GewuMind Boot v1.2.1

> 补丁版本（patch）。在 1.2.0 基础上修复问题，**不包含** 2.0 新增能力，不需要更换 License。

## 中文

### 修复

- **菜单管理列表**：表头缺失（虚拟滚动下未渲染表头）已修复；「菜单名称」「路径」两列加宽到 260px，长内容不再被压窄。
- **配置中心配置不全**：列表接口分页 `size` 失效导致只显示 10 条，改为全量返回，配置项完整显示。
- **业务页面保存报错**：`common.post` 由 form-urlencoded 改为 JSON，修复客户/订单/角色/字典等页面保存时后端 `body` 为空、报「系统内部出现错误」。
- **登录验证码开关**：登录接口直读 `sys_configure`，避免 `configure()` 缓存导致开关与实际不一致。
- 英文版同步上述修复（`data/en/magic-api` 对应菜单、配置中心）。

- 配置中心缺少 SSO 配置项：补齐 `sso.enable`（启用开关）与 `sso.config`（JSON 参数），中英文库同步。

- 配置中心保存报「系统内部出现错误」：保存接口由读取 `data` 改为 `body`，中英文同步修复。

### 升级说明

- 版本：应用 **1.2.1**，内核 **0.3.4**，开发技能 **1.2.1**（同一 tag）。
- 同一大版本内 patch 升级，**不需要更换 License**；升级前建议备份数据库。
- 中文/英文环境均直接替换发行包并沿用现有数据库；本次没有数据库结构变更。
- 替换后需重启实例，`.ms` 变更随发行包生效。

### 下载与校验

- `gewumind-boot-app-1.2.1.tar.gz` / `gewumind-boot-app-1.2.1.zip`
- `SHA256SUMS` / `SHA256SUMS.sig`
- 内核 `gewumind-boot-0.3.4.jar` / `.sig`
- 公钥：`gewumind-release-2026.pub`

## English

### Fixes

- **Menu management list**: restored the missing table header (not rendered under virtual scroll); widened the "Menu name" and "Path" columns to 260px.
- **Configuration center**: the list API ignored the page `size`, showing only 10 items; now returns all configs.
- **Business page save error**: `common.post` now sends JSON instead of form-urlencoded, fixing empty `body` on customer/order/role/dictionary save.
- **Login captcha switch**: the login API reads `sys_configure` directly to avoid stale `configure()` cache.
- Mirror the same fixes to the English dataset (`data/en/magic-api`).

- Configuration center was missing the SSO items: added `sso.enable` and `sso.config` (JSON) for both zh/en datasets.

- Configuration center save returned an error: save API now reads from `body` (was `data`), zh/en fixed.

### Upgrade notes

- Versions: app **1.2.1**, kernel **0.3.4**, skill **1.2.1** (same tag).
- Patch upgrade within the same major version — **no License change required**; back up the database before upgrading.
- No schema changes; replace the release package and restart. `.ms` changes take effect with the package.
