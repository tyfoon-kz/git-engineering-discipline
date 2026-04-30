# Published history and safe undo

## Decision

Published history is any commit that is visible outside my local machine: pushed to remote, opened in a pull request, merged into a protected branch, used for staging, tagged for release, or used as a base by another developer.

## Safe undo rule

If the commit is published, I do not treat it as a private draft. The default repair is a new commit, usually created with `git revert <sha>`, followed by `make check`, review, and normal merge rules.

## Why not force push

Force push can move the remote branch away from commits that other people already fetched or reviewed. That breaks the shared base for collaboration. A team may allow force push on personal review branches by explicit agreement, but it is not the beginner recovery tool and it must not be used for protected main, release, or support lines.

## Revert flow

```bash
git fetch origin
git switch -c revert/broken-change origin/main
git revert <published-commit-sha>
make check
git status --short
```

The pull request explains the broken commit, why revert is safer than rewriting history, and which checks passed.
