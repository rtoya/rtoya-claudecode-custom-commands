---
name: git-summary
description: Gitリポジトリの状態概要を表示
---

# Git Summary

プロジェクトのGit状態を包括的に表示します。

## 実行内容

- 現在のブランチ
- ステータス確認
- 最近のコミット履歴
- リモート情報

!echo "=== Git Summary ==="
!git branch --show-current | sed 's/^/🌿 Current Branch: /'
!echo
!echo "📝 Working Tree Status:"
!git status --short
!echo
!echo "📋 Recent Commits:"
!git log --oneline -5
!echo
!echo "🔗 Remote Information:"
!git remote -v
