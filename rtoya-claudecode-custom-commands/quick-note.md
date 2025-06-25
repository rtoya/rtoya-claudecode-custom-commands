# Quick Note Creator

引数として渡されたテキストを素早くノートファイルに保存します。

使用例: `quick-note 今日のタスク完了`

## 実行内容

以下のコマンドで `~/quick-notes/` ディレクトリにタイムスタンプ付きでノートを保存します。

!mkdir -p ~/quick-notes
!echo "$(date): $ARGUMENTS" >> ~/quick-notes/notes-$(date +%Y%m%d).txt
!echo "Note saved to ~/quick-notes/notes-$(date +%Y%m%d).txt"
