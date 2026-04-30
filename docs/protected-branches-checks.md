# Protected branches and required checks

## Protected branch policy

Protected branch is an enforceable platform rule, not only a team promise. SSH access to the repository does not automatically allow direct push to protected `main`.

Policy for `main`:

```text
direct push: forbidden
force push: forbidden
PR/MR: required
review: at least one approval
required checks: green before merge
```

## Change path

```text
feature branch -> PR/MR -> review -> required checks -> protected main
```

The author works in a feature branch, pushes it, opens PR/MR and waits for review and checks. The shared branch changes only through the approved path.

## Local and remote checks

Local `make check` is still required because it catches simple issues before push and reduces noise for reviewer and CI. It does not replace required remote checks because the team needs a visible result on shared infrastructure for the exact commit being merged.

## Link to Module 05

Module 05 expands this idea into corporate flow. Protected branch and CI gates become part of a longer path: feature branch, review, integration line, staging, release path and production decision.

## Local checks

```bash
make check
git status --short
git branch -vv
```
