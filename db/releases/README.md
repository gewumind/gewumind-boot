# 数据库发布脚本

从 2.3.0 起，数据库发布采用“当前版本全库脚本 + 后续版本升级脚本”的方式，不再保留
`db/init/` 拼接源，也不再自动生成旧版本脚本。

## 目录

```
db/releases/2.3.0/zh/full.sql   # 中文全新安装
db/releases/2.3.0/en/full.sql   # English fresh install
```

- `full.sql`：完整安装，包含表结构、平台数据和演示数据，只能导入空库。
- 后续版本（如 2.4.0）新增 `upgrade-from-2.3.0.sql`，不要修改已发布的 `full.sql`。
- 2.3.0 与 2.2.x 及更早版本不提供升级脚本，作为新的起点库使用。

## 用法

```bash
# 中文
mysql -uroot -p gewumind-boot < db/releases/2.3.0/zh/full.sql

# English
mysql -uroot -p gewumind-boot-2-en < db/releases/2.3.0/en/full.sql
```

## 说明

- 脚本中的 TTS/ASR/AI Key 与 H5 签名私钥已清空，导入后在配置中心填写，
  或让服务启动时自动生成 H5 签名密钥。
- 中文/英文脚本结构一致，文本内容分别为中文和英文。
- 修改数据库后不要再运行旧的 `scripts/gen-db-releases.sh`；该脚本已移除。
