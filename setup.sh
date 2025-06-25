#!/bin/bash

# Claude Code カスタムコマンド セットアップスクリプト
# このスクリプトは ~/.claude/commands/ に個別ファイルをコピーします

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMMANDS_DIR="$HOME/.claude/commands"
SOURCE_DIR="$SCRIPT_DIR/rtoya-claudecode-custom-commands"

echo "🚀 Claude Code カスタムコマンドのセットアップを開始します..."

# ~/.claude/commands ディレクトリが存在しない場合は作成
if [ ! -d "$COMMANDS_DIR" ]; then
    echo "📁 $COMMANDS_DIR ディレクトリを作成しています..."
    mkdir -p "$COMMANDS_DIR"
fi

# ソースディレクトリの存在確認
if [ ! -d "$SOURCE_DIR" ]; then
    echo "❌ $SOURCE_DIR が見つかりません。"
    exit 1
fi

# 個別ファイルをコピー
echo "📋 コマンドファイルをコピーしています..."
for file in "$SOURCE_DIR"/*.md; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        echo "  - $filename"
        cp "$file" "$COMMANDS_DIR/"
    fi
done

# 確認
echo "✅ セットアップが完了しました！"
echo "📍 ソースディレクトリ: $SOURCE_DIR"
echo "🎯 コマンドディレクトリ: $COMMANDS_DIR"
echo ""
echo "利用可能なコマンド（全リポジトリで使用可能）:"
echo "  /user:code-review <filepath>"
echo "  /user:git-summary"
echo "  /user:system-info"
echo "  /user:quick-note <テキスト>"
