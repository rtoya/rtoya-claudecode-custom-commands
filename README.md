# Claude Code カスタムコマンド集

Claude Code (claude.ai/code) で使用するカスタムコマンドのコレクションです。開発作業を効率化するためのツールを提供します。

## インストール方法

### 自動セットアップ（推奨）

```bash
# リポジトリをクローン
git clone https://github.com/username/rtoya-claudecode-custom-commands.git
cd rtoya-claudecode-custom-commands

# セットアップスクリプトを実行
./setup.sh
```

### 手動セットアップ

```bash
# シンボリックリンクを手動で作成
ln -s /path/to/rtoya-claudecode-custom-commands/rtoya-claudecode-custom-commands ~/.claude/commands/rtoya-claudecode-custom-commands
```

## 利用可能なコマンド

### 🔍 Code Review Helper (`code-review`)
コードレビューに必要な情報を収集し、レビューのチェックポイントを表示します。

**使用法:** `code-review <filepath>`

### 📊 Git Summary (`git-summary`)
プロジェクトのGit状態を包括的に表示します。

**使用法:** `git-summary`

### 📝 Quick Note Creator (`quick-note`)
引数として渡されたテキストを素早くノートファイルに保存します。

**使用法:** `quick-note <テキスト>`

### 💻 System Information (`system-info`)
システム情報を表示します。現在の環境やディレクトリを確認したいときに使用。

**使用法:** `system-info`

## 技術仕様

### コマンド構造
すべてのコマンドは以下の一貫した構造に従っています：

1. **日本語ドキュメント** - コマンドの目的と使用方法を説明
2. **使用例** - 引数付きでの実行方法を表示
3. **実行可能なシェルコマンド** - `!` プレフィックスで実際の機能を実行

### シェルコマンドパターン
- すべての実行可能コマンドは `!` プレフィックスを使用
- エラーハンドリングを含む安全な実装
- 引数は `$ARGUMENTS` 変数で受け取り

## 開発者向け情報

### 新しいコマンドの追加
1. 適切なスコープ（`project:` または `user:`）を選択
2. 既存の日本語ドキュメント形式を維持
3. `!` プレフィックスを使用したシェルコマンドを実装
4. エラーハンドリングを含める

### ファイル管理
- コマンドファイルはマークダウン形式（`.md`）
- CLAUDE.md にプロジェクト全体の説明を記載
- 各コマンドは独立したファイルとして管理

## 利用例

```bash
# コードレビューの実行
code-review src/main.js

# Git状態の確認
git-summary

# クイックノートの作成
quick-note 本日のタスク完了、明日はテスト実装予定

# システム情報の確認
system-info
```

## 注意事項

- コマンドはClaude Code環境内で実行されます
- ファイルパスやテキストに特殊文字が含まれる場合は適切にエスケープしてください
- quick-noteコマンドで作成されるファイルは日付ごとに分かれます

## ライセンス

このカスタムコマンド集は開発効率化を目的としたツールです。個人および商用利用において自由にご利用ください。