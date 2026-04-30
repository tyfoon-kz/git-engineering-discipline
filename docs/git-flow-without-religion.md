# Git Flow without religion

## Role table

| Role | Problem solved | Cost | Owner | Failure mode |
| --- | --- | --- | --- | --- |
| `main` | Holds production releases and tags | Must be strongly protected | Release owner | Direct commits break traceability |
| `develop` | Integration line for next version | Extra merge and sync work | Tech lead | Becomes unstable dumping ground |
| `feature/*` | Isolates task work | Can live too long | Feature author | Huge PR and painful merge |
| `release/*` | Stabilizes a named version | Requires freeze and owner | Release owner | Becomes second `develop` |
| `hotfix/*` | Fixes production incident fast | Needs backport discipline | Incident owner | Fix disappears from next version |
| tags | Mark exact released commit | Need release notes and consistency | Release owner | Tag points to unverified commit |

## Release path

```text
feature/* -> develop -> release/1.4.0 -> main -> tag v1.4.0
```

## Hotfix path

```text
tag v1.4.0 -> hotfix/payment-timeout -> main -> tag v1.4.1
                                      \-> develop or next release
```

## Decision for ecommerce-platform

The current learning project does not need full Git Flow. It should keep protected `main`, short feature branches, pull request review, `make check`, and tags for named releases. `develop` and long release branches are unnecessary until the project has multiple developers, a real QA window, external release dates, or support obligations.

## Signals to adopt more Git Flow parts

1. The team starts shipping scheduled releases with stabilization windows.
2. Customers require support for previous minor versions.
3. Production rollback becomes expensive and release candidates need QA sign-off.

## Local checks

```bash
make check
git status --short
```
