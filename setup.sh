#!/bin/bash

# Claude Code カスタムコマンド セットアップスクリプト
# このスクリプトは ~/.claude/commands/ にシンボリックリンクを作成します

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

# ディレクトリ全体のシンボリックリンクを作成
echo "🔗 コマンドディレクトリのシンボリックリンクを作成しています..."
target_dir="$COMMANDS_DIR/rtoya-claudecode-custom-commands"

# 既存のリンクがある場合は削除
if [ -L "$target_dir" ]; then
    echo "🗑️  既存のリンク rtoya-claudecode-custom-commands を削除しています..."
    rm "$target_dir"
fi

echo "🔗 rtoya-claudecode-custom-commands ディレクトリをリンクしています..."
ln -s "$SOURCE_DIR" "$target_dir"

# 確認
if [ -L "$target_dir" ]; then
    echo "✅ セットアップが完了しました！"
    echo "📍 ソースディレクトリ: $SOURCE_DIR"
    echo "🎯 コマンドディレクトリ: $target_dir"
    echo ""
    echo "利用可能なコマンド:"
    echo "  code-review <filepath>"
    echo "  git-summary"
    echo "  system-info"
    echo "  quick-note <テキスト>"
else
    echo "❌ シンボリックリンクの作成に失敗しました。"
    exit 1
fi
