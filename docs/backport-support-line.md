# Backport and support line

## Support line

A support line is an active maintenance line for an older supported version. It accepts important fixes with limited scope. It is not a place to merge all future work from `develop`.

## Backport decision

Before backporting, the team answers:

- Is the old version affected?
- What is the source fix commit?
- What is the target support line?
- Can the fix be applied without new features or incompatible migrations?
- Which checks prove the patch release is safe?

## Safe flow

```bash
git fetch origin
git switch -c backport/checkout-total-1.7 origin/support/1.7
git cherry-pick -x <source-fix-sha>
make check
git status --short
```

If the old branch is too different, the engineer may apply a manual minimal fix, but the PR still links to the source commit.

## Why not merge develop

`develop` can contain new features, refactoring, migrations, and behavior changes for a future release. A support line needs a minimal patch. Merging all of `develop` into a support line can break compatibility and violate the release promise for old customers.

## Release note

The backport PR should mention the patch release marker, for example `v1.7.6`, and describe the fixed customer-visible problem.
