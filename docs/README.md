# GewuMind Boot 文档

> **Language / 语言**：[English](./en/README.md) | [中文](./README.md)

GewuMind Boot 的完整文档。按你的角色从这里进入：

| 我想… | 看这份 |
|---|---|
| **把它部署起来**（下载、数据库、多平台、HTTPS、升级、备份） | [部署指南](./zh/部署指南.md) |
| **搞懂每个菜单 / 每个系统配置 / 收费能力与授权**（含逐项配图） | [使用手册](./zh/使用手册.md) |
| **用低代码开发功能**（写接口、写页面、在线调试、报表、流程、Redis/MQTT/Kafka/SSE/TCP/WS） | [低代码开发教程](./zh/低代码开发教程.md) |
| **基于它做二次开发**（源码结构、构建链路、扩展点） | [二次开发指南](./zh/二次开发指南.md) |
| **让 AI 帮我开发**（gewumind-skill 四阶段管线） | [AI 开发](./zh/AI开发.md) |
| **了解整体架构与技术选型** | [架构说明](./zh/架构说明.md) |

## 快速开始

```bash
tar -xzf gewumind-boot-<ver>.tar.gz && cd gewumind-boot-<ver>
vi config/application-dev.yml          # 填数据库地址与密码
bash start.sh                          # 首次启动自动建库
# 打开 http://<服务器IP>:9089   默认 admin / 123456（请立即修改）
```

## 目录结构

```
docs/
├── README.md          ← 你在这里（统一入口）
├── zh/                中文文档
│   ├── 部署指南.md
│   ├── 使用手册.md
│   ├── 低代码开发教程.md
│   ├── 二次开发指南.md
│   ├── AI开发.md
│   └── 架构说明.md
├── en/                English docs
│   ├── deployment.md
│   ├── user-guide.md
│   ├── lowcode-guide.md
│   ├── development.md
│   ├── ai-development.md
│   └── architecture.md
├── zh/screenshots/    中文截图与 GIF
└── en/screenshots/    英文截图
```

## 建议阅读顺序

- **我是实施/运维** → 部署指南 → 使用手册
- **我是开发者，要做业务功能** → 低代码开发教程（重点看「在线调试」那一章）→ 使用手册（查配置项含义）
- **我要改源码 / 集成到现有系统** → 二次开发指南 → 架构说明
- **我想用 AI 加速开发** → AI 开发

## 截图与演示

`zh/screenshots/` 下是中文界面截图与动图（`zh/screenshots/gif/`），`en/screenshots/` 是英文界面截图，
在 [使用手册](./zh/使用手册.md) 与 [低代码开发教程](./zh/低代码开发教程.md) 中按需引用，
项目主页 [README](../README.md) 里有一页速览。

## 获取帮助

- 官网：https://gewumind.github.io
- 问题反馈：提交 GitHub Issue
- AI 开发技能：https://github.com/gewumind/gewumind-skill
