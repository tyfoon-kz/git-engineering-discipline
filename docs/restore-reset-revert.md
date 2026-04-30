# Restore, reset and revert

## Goal

This artifact is the reference answer for Module 06 Lesson 01. It shows that safe undo starts with the Git layer, not with a memorized command.

## Four layers

| Layer | What it means | Safe action |
| --- | --- | --- |
| Working tree | A file is changed on disk but not staged. | Inspect with `git diff`; if the change is unwanted, use `git restore <path>`. |
| Staging area | A file is prepared for the next commit. | Use `git restore --staged <path>` to unstage while keeping the working file. |
| Local commit | The commit exists only in the local branch. | Use a careful local repair, for example `git reset --mixed HEAD~1`, then rebuild the commit. |
| Published history | The commit is visible in remote, PR, protected branch, release branch, or support line. | Use `git revert <sha>` and send the new commit through review and checks. |

## Why not reset hard

`git reset --hard` changes the branch position, the index, and the working tree. For a beginner it is too easy to destroy uncommitted work while trying to solve a small staging problem. In this course the safer habit is: `git status --short`, `git diff`, `git diff --staged`, then the smallest command for the exact layer.

## Local checks

```bash
make status
make diff
make log
make check
```
