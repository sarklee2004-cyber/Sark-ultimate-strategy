#!/usr/bin/env bash
# 生成可导入单技能压缩包：dist/<name>.zip（SKILL.md 在压缩包根目录）
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
NAME="${1:-ultimate-strategy}"
cd "$ROOT/skills/$NAME"
rm -f "$ROOT/dist/$NAME.zip"
zip -qr "$ROOT/dist/$NAME.zip" SKILL.md references
echo "built $ROOT/dist/$NAME.zip"
unzip -l "$ROOT/dist/$NAME.zip" | tail -3
