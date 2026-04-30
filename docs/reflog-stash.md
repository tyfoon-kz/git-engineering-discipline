# Reflog and stash

## Reflog recovery

`git reflog` is a local journal of movements of `HEAD` and branch references. If I lose the previous tip of a local branch after a local operation, I first stop and inspect:

```bash
git status --short
git reflog -10
git switch -c recovery/found-work HEAD@{2}
make check
```

The important safety step is the recovery branch. It preserves the found position without moving a protected or shared line.

## Stash context switch

`git stash` is a temporary shelf for unfinished local work. It is useful when I must switch context briefly, for example to inspect a hotfix branch while my feature branch has uncommitted edits.

```bash
git status --short
git stash push -m "wip checkout validation before hotfix"
git switch hotfix/checkout-total
make check
git switch feature/checkout-validation
git stash apply stash@{0}
```

Stash is not a replacement for a commit. If work is important or long-lived, it belongs in a named branch with a commit that can be reviewed, pushed, and checked.
