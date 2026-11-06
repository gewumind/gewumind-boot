# 实例测试留档 / Instance-test records

每个版本发布前**必须**完成一次真实业务应用的实例测试，并把留档放在本目录（`<version>.md`），同时归档到本地 Gitea `gewumind-instance-test` 仓库。`scripts/release.sh` 会校验本目录存在 `<version>.md`，缺失则拒绝发布（除非 `GW_SKIP_INSTANCE_TEST=<原因>`）。

## 纪律（每个版本）

1. 从本地 Gitea 拉取该版本源码 → `build-dist.sh` 构建发行版。
2. 新库 + 新端口启动全新实例。
3. 用一个**真实业务需求**（非 demo）走 gewumind-skill 四阶段：数据模型 → 接口/页面 → 菜单/字典 → 发布。
4. 按需求里的验收点逐项验收（含目标终端，如 H5 需手机浏览器 + 微信 webview 全链路）。
5. 记录：需求、环境、实施步骤、验收结果（逐条 ✅/❌ + 证据）、踩坑与修复。
6. 留档 `docs/instance-test/<version>.md` + 归档 Gitea。

## 索引

| 版本 | 需求 | 留档 |
|---|---|---|
| 2.1.0 | 库存管理系统（含 AI 客服 + 知识库）；制造企业接入 AI 知识库 | [2.1.0.md](2.1.0.md) |
