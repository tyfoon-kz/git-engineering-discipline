# Branching strategy contract

## Purpose

This repository uses branches as a team contract, not as decoration. The contract explains where work starts, how it reaches the shared line, which checks are mandatory, who owns release decisions, and how emergency fixes return to future work.

## Branch roles

| Branch | Role | Owner | Allowed source | Required checks | Release meaning |
| --- | --- | --- | --- | --- | --- |
| `main` | Production-ready line | Release owner | Approved PR from `feature/*`, `release/*`, or `hotfix/*` | `make check`, CI, review approval | Commit may be deployed or tagged |
| `feature/*` | Isolated task work | Feature author | Created from current `main` | Local `make check` before PR | No direct release meaning |
| `release/*` | Stabilization line for a named version | Release owner | Created from approved base commit | CI, QA sign-off, release checklist | Candidate for version tag |
| `hotfix/*` | Emergency production fix | Incident owner | Created from production line or exact tag | Focused review, `make check`, patch validation | Patch release candidate |

## Flow

```text
feature/* -> pull request -> review -> CI -> protected main -> tag/deploy
release/* -> blocker fixes -> release owner approval -> main -> tag
hotfix/* -> focused review -> main -> patch tag -> backport to future/support lines
```

## Local checks before review

```bash
make check
git status --short
git diff --check
```

`make check` gives the author a repeatable preflight. It does not replace CI, but it prevents obvious whitespace and repository-state mistakes from reaching review.

## Forbidden scenarios

1. Direct commit to `main`.
   The contract blocks this with protected `main`, required review, and required checks.
2. Hotfix deployed but not backported.
   The contract requires every `hotfix/*` to record affected lines and return the fix to future or support branches.

## Rollback assumptions

Every release must be traceable to a commit or tag. Rollback means either redeploying the previous known-good artifact or reverting the faulty commit through the same protected process. A rollback does not delete history.
