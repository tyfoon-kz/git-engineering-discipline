# Cherry-pick

## When to use

Cherry-pick is useful when one commit must move to another line, but the whole source branch must not be merged. Typical cases are hotfix follow-up, release branch fixes, and backport to a support line.

## Safe flow

```bash
git fetch origin
git switch -c backport/checkout-total origin/support/1.7
git cherry-pick -x <source-commit-sha>
make check
git status --short
```

The branch name states the target. The `-x` flag keeps a source commit reference in the new commit message, which helps review and audit trail.

## Source, target and SHA

The source commit provides the patch. The target branch provides the new parent. The resulting commit usually has a different SHA because a Git commit includes parent and metadata, not only file changes.

## Conflicts

If cherry-pick conflicts:

```bash
git status
# resolve files
git add <resolved-files>
git cherry-pick --continue
make check
```

If the source commit or target branch is wrong, stop with:

```bash
git cherry-pick --abort
```
