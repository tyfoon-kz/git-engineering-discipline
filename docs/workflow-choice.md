# Workflow choice matrix

## Matrix

| Scenario | Team size | Release cadence | CI maturity | Rollback cost | Regulatory needs | Support model | Recommended workflow | Required gates |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Solo learning project | 1 | On demand | Low to medium | Low | None | None | Short branch -> PR habit -> protected main | `make check`, clean status |
| Small SaaS team | 3-8 | Daily or weekly | High | Low to medium | Low | Current version only | GitHub Flow or trunk based | PR, CI, review, rollback note |
| Enterprise release train | 15-50 | Scheduled | Medium to high | High | Audit evidence | Current plus previous minor | Release branches with tags | QA sign-off, release owner, backport tracking |
| Regulated product | 20+ | Planned windows | High but controlled | Very high | Strong | Multiple support lines | GitLab Flow/Git Flow variant with approvals | Protected branches, protected environments, evidence, tags |

## Why not heavier

The solo project does not need `develop`, release trains, or support branches because there is no coordination risk to reduce. The small SaaS team should avoid release branches unless release windows or old-version support appear. The enterprise and regulated scenarios need heavier gates because rollback and audit cost are real.

## When to evolve

- Add release branches when QA needs a stable candidate while future work continues.
- Add support lines when older versions must receive fixes.
- Add protected environments when deployment approval is a separate risk gate.
- Move toward trunk based when CI, flags, rollback, and review are strong enough.

## Decision for ecommerce-platform

Use protected `main`, short feature branches, pull request review, `make check`, and CI. Add tags when releases are named. Do not add `develop` or release branches yet. Revisit the decision when there is a team of several developers, external QA, monthly releases, or support for previous versions.

## Local checks

```bash
make check
git status --short
```
