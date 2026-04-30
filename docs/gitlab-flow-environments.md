# GitLab Flow and environments

## Terms

- Branch: Git ref that points to commit history.
- Pipeline: automated jobs for a specific commit.
- Artifact: build result produced by a pipeline.
- Environment: deployment target where a commit or artifact runs.

An environment is not a branch. The important operational question is which commit or artifact is deployed to the environment.

## Flow

```text
feature/* -> merge request -> main -> pipeline -> staging deployment -> approval -> production deployment
```

## Environment table

| Environment | Source | Owner | Checks | Approval |
| --- | --- | --- | --- | --- |
| Review/dev | Feature branch pipeline | Feature author | `make check`, CI | Author and reviewer |
| Staging | `main` artifact | QA or release owner | CI, smoke check, acceptance notes | QA sign-off |
| Production | Approved staging artifact or release tag | Release owner | Release checklist, rollback ready | Release approval |

## Environment branch variant

A team may use a `production` or `staging` branch when deployment promotion must be represented as a Git line. This can help with release windows or audit, but it adds drift risk. The team must define who can update the branch, whether the same artifact is promoted, and how fixes return to `main`.

## Troubleshooting

1. "QA tested staging branch" is unclear. QA tests staging environment with a specific deployed commit.
2. Production branch accepts direct commits. Protect it and require approvals.
3. Hotfix is made only in environment branch. Backport it to `main` or the next release line.

## Local checks

```bash
make check
git status --short
```
