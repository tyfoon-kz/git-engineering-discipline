# Cherry-pick

## Real practice

I created source branch `practice/cherry-source` and made source commit `3c9a3de`:

```text
fix(payment): mark timeout as retriable
```

Then I switched back to `homework-v3-06-04-cherry-pick` and ran:

```bash
git cherry-pick -x practice/cherry-source
```

The new commit on the target branch is `d4be432`. It has the same patch, but a different SHA because the parent and commit metadata are different. The commit message keeps the audit link:

```text
(cherry picked from commit 3c9a3ded10ad1baa6ae2c8fd105be5962bffab06)
```

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

In this homework:

```text
source branch: practice/cherry-source
target branch: homework-v3-06-04-cherry-pick
source SHA: 3c9a3de
target cherry-pick SHA: d4be432
```

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
