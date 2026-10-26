# GewuMind Boot Documentation

> **Language / 语言**：[English](./README.md) | [中文](../README.md)

> Screenshots show the Chinese UI; append `?lang=en` to the app URL for the English UI.

Full documentation for GewuMind Boot. Pick your entry point by role:

| I want to… | Read |
|---|---|
| **Deploy it** (download, database, platforms, HTTPS, upgrade, backup) | [Deployment](./deployment.md) |
| **Understand every menu / system setting / licensing** | [User Guide](./user-guide.md) |
| **Build features with low-code** (APIs, pages, live debugging, reports, workflows) | [Low-code Guide](./lowcode-guide.md) |
| **Do secondary development** (source builds, extension points) | [Development Guide](./development.md) |
| **Develop with AI** (gewumind-skill four-stage pipeline) | [AI Development](./ai-development.md) |
| **Understand the architecture** | [Architecture](./architecture.md) |

## Quick start

```bash
tar -xzf gewumind-boot-<ver>.tar.gz && cd gewumind-boot-<ver>
vi config/application-dev.yml          # database url / password
bash start.sh                          # auto-creates schema on first run
# open http://<server-ip>:9089   default admin / 123456 (change it!)
```

## Layout

```
docs/
├── README.md          ← you are here
├── zh/                Chinese docs
│   ├── 部署指南.md · 使用手册.md · 低代码开发教程.md
│   └── 二次开发指南.md · AI开发.md · 架构说明.md
├── en/                English docs
│   ├── deployment.md · user-guide.md · lowcode-guide.md
│   └── development.md · ai-development.md · architecture.md
└── screenshots/       English UI screenshots
```

## Suggested reading order

- **Implementer / Ops** → Deployment → User Guide
- **Developer building features** → Low-code Guide (see *Online debugging*) → User Guide
- **Extending the platform** → Development Guide → Architecture
- **Building with AI** → AI Development

## Links

- Website: https://gewumind.github.io
- AI skill: https://github.com/gewumind/gewumind-skill
