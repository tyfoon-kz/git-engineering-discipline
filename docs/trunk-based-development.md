# Trunk based development readiness note

## Definition

`main` is the trunk. It is the short shared integration line and must stay deployable. Developers may use short-lived branches, but those branches should return to trunk quickly through review and required checks.

## Flow

```text
short branch -> pull request or merge request -> review -> CI -> trunk -> deploy pipeline
```

## Required discipline

| Area | Rule |
| --- | --- |
| Branch lifetime | Hours or a few days, not weeks |
| Review | Small PRs with clear risk and rollback notes |
| CI | Required before merge to trunk |
| Local checks | Author runs `make check` before review |
| Feature exposure | Incomplete behavior is hidden behind feature flags or configuration |
| Rollback | Revert commit or disable flag quickly |

## Readiness checklist

- CI is fast enough to run on every PR.
- Tests are reliable enough that red means real attention.
- Review queue does not block small changes for days.
- Feature flags or equivalent controls exist for unfinished work.
- Production rollback is understood and rehearsed.
- Monitoring can detect a bad deploy quickly.
- `main` is protected from direct push.

## When not to use yet

Do not claim trunk based development if the team has no reliable CI, no review discipline, no rollback plan, no way to hide unfinished work, or a culture of large branches that live for weeks. In that situation trunk becomes a shared risk pile instead of a healthy integration line.

## Local checks

```bash
make check
git status --short
```
