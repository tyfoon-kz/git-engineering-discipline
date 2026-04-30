# Pull request and review

## PR or MR as interface

A pull request or merge request is the review interface around Git refs. Git stores commits and branches. The platform compares source branch with target branch and shows diff, commits, comments, approvals and checks.

Good review starts before the reviewer opens the diff. The author must give context, expected result and local checks.

## Description template

````md
## Context
Why this change exists.

## Changes
- What files or behavior changed.

## Local checks
```bash
make check
git status --short
```

## Risks
What can be wrong or unclear.
````

## Review protects the shared branch

Review is not personal criticism. It protects the shared branch from unclear changes, missing checks, accidental files and weak explanations. CI checks what is automated. A reviewer checks meaning, risk and maintainability.

## Bad PR examples

- Empty description.
- Title like `fix` or `homework`.
- Several unrelated tasks in one branch.
- No `make check` result before sending.
- Force push after comments without explanation.

## Before sending

```bash
make check
git status --short
git branch -vv
```
