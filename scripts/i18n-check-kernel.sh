#!/usr/bin/env bash
# 检查内核 i18n 消息（需本地内核源码；不参与公开 CI）
# 用法: GW_KERNEL_DIR=/path/to/backend scripts/i18n-check-kernel.sh
set -euo pipefail

KERNEL_DIR="${GW_KERNEL_DIR:?需要 GW_KERNEL_DIR（内核源码目录）}"
JAVA="$KERNEL_DIR/src/main/java/com/gewumind/boot/api/AiApiController.java"
ZH="$KERNEL_DIR/src/main/resources/i18n/messages.properties"
EN="$KERNEL_DIR/src/main/resources/i18n/messages_en.properties"

for f in "$JAVA" "$ZH" "$EN"; do
  [ -f "$f" ] || { echo "i18n-check-kernel: 缺少 $f" >&2; exit 2; }
done

python3 - "$JAVA" "$ZH" "$EN" <<'PY'
import os
import re
import sys

java, zh_path, en_path = sys.argv[1:4]
used = set()
for dp, _, names in os.walk(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(os.path.dirname(java)))))):
    for name in names:
        if not name.endswith('.java'):
            continue
        text = open(os.path.join(dp, name), encoding='utf-8').read()
        used.update(re.findall(r'(?:msg|KernelMessages\.get)\("([^"]+)"', text))


def keys(path):
    result = set()
    for line in open(path, encoding='utf-8'):
        line = line.strip()
        if not line or line.startswith('#') or '=' not in line:
            continue
        result.add(line.split('=', 1)[0].strip())
    return result


zh = keys(zh_path)
en = keys(en_path)
bad = []
if used - zh:
    bad.append('missing zh keys: ' + ', '.join(sorted(used - zh)))
if used - en:
    bad.append('missing en keys: ' + ', '.join(sorted(used - en)))
if zh != en:
    bad.append('zh/en key sets differ')
for line in open(en_path, encoding='utf-8'):
    if '=' in line and re.search(r'[\u4e00-\u9fff]', line.split('=', 1)[1]):
        bad.append('Chinese in en: ' + line.strip())
if bad:
    print('\n'.join(bad))
    sys.exit(1)
print(f'kernel i18n OK ({len(used)} used keys, {len(zh)} defined)')
PY
