#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MANIFEST="${1:-$ROOT/libs/com/gewumind/gewumind-boot/0.3.5/kernel-manifest.json}"
DIR="$(cd "$(dirname "$MANIFEST")" && pwd)"
MANIFEST="$DIR/$(basename "$MANIFEST")"

[ -f "$MANIFEST" ] || { echo "manifest not found: $MANIFEST" >&2; exit 1; }

read -r APP KERNEL JAR WANT <<<"$(python3 - "$MANIFEST" <<'PY'
import json, sys
m = json.load(open(sys.argv[1], encoding='utf-8'))
a = m['artifacts']
print(m['appVersion'], m['kernelVersion'], a['jar'], a['sha256'])
PY
)"

POM_APP="$(awk '/<artifactId>gewumind-boot-app<\/artifactId>/{f=1} f && /<version>/{gsub(/.*<version>|<\/version>.*/,""); print; exit}' "$ROOT/pom.xml")"
[ "$APP" = "$POM_APP" ] || { echo "app version mismatch: manifest=$APP pom=$POM_APP" >&2; exit 1; }

[ -f "$DIR/$JAR" ] || { echo "kernel jar not found: $DIR/$JAR" >&2; exit 1; }
GOT="$(sha256sum "$DIR/$JAR" | awk '{print $1}')"
[ "$WANT" = "$GOT" ] || { echo "sha256 mismatch: manifest=$WANT actual=$GOT" >&2; exit 1; }

"$ROOT/scripts/verify-signature.sh" "$DIR/$JAR"

echo "kernel manifest OK: app=$APP kernel=$KERNEL jar=$JAR"
