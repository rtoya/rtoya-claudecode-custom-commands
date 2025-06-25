---
name: code-review
description: コードレビューヘルパー - ファイル分析とレビューチェックリストを提供
---

# Code Review Helper

コードレビューに必要な情報を収集し、レビューのチェックポイントを表示します。

引数でファイルパスを指定できます: `code-review src/main.js`

## レビューチェックポイント

以下の観点でコードをレビューしてください：

1. **コードの可読性**
   - 変数名は適切か
   - コメントは必要十分か
   - 関数の責務は明確か

2. **セキュリティ**
   - 入力値の検証
   - 機密情報の適切な取り扱い
   - SQLインジェクション等の脆弱性

3. **パフォーマンス**
   - 無駄な処理はないか
   - メモリリークの可能性
   - 効率的なアルゴリズム

4. **テスト**
   - テストケースは十分か
   - エッジケースを考慮しているか

## ファイル情報表示

!if [ -n "$ARGUMENTS" ]; then
!  echo "=== File Analysis: $ARGUMENTS ==="
!  echo "📄 File type:"
!  file "$ARGUMENTS" 2>/dev/null || echo "File not found"
!  echo
!  echo "📊 File stats:"
!  wc -l "$ARGUMENTS" 2>/dev/null || echo "Cannot read file"
!  echo
!  echo "🔍 File content preview (first 20 lines):"
!  head -20 "$ARGUMENTS" 2>/dev/null || echo "Cannot preview file"
!else
!  echo "使用例: code-review <filepath>"
!fi
