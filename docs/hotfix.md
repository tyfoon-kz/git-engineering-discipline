# Hotfix

## Incident context

Production checkout total is wrong for discounted orders. The affected production line is `main`, and the current patch release candidate will be built from the protected production history.

## Safe hotfix flow

```bash
git fetch origin
git switch -c hotfix/checkout-total origin/main
# make the smallest fix
make check
git status --short
```

The hotfix goes through review even if review is accelerated. It must not be a direct manual edit in protected main and must not use force push. The pull request states symptom, affected version, scope, checks, reviewer, and release note.

## Release marker

After merge and deploy, the team records the patch release, for example `v1.8.1`, or adds an explicit release note if tags are handled by automation.

## Follow-up

The hotfix must be returned to the future integration line:

```bash
git switch -c follow-up/checkout-total-develop origin/develop
git cherry-pick -x <hotfix-commit-sha>
make check
```

Without this follow-up, the next release train can reintroduce the bug.
