# GitHub Flow for ecommerce-platform

## Flow

```text
create branch -> commit -> push -> pull request -> review -> checks -> merge to protected main -> deploy
```

Work starts from current `main`. The branch is short-lived and named after the task, for example `feature/catalog-empty-state`. The pull request is the review and discussion unit. `main` is protected and must remain deployable.

## Pull request checklist

- Scope is small enough for review.
- Description explains the user or engineering problem.
- `make check` passes locally.
- CI status checks pass.
- Reviewer questions are resolved.
- Risk is described.
- Rollback or revert path is described.
- Screenshots or examples are attached for visible behavior.
- No direct commits to `main`.
- Release impact is clear.

## Required checks

```bash
make check
git status --short
git diff --check
```

Remote checks must include CI and at least one review approval. Admin bypass is reserved for documented incidents and must be followed by a post-incident note.

## Release and rollback

For frequent deploys, merge to `main` may trigger deployment. For named releases, the release owner creates a tag from the exact commit. Rollback means redeploying the previous known-good artifact or reverting the merged PR through the same protected process.

## Not enough when

GitHub Flow may be too light when the product has monthly release trains, external QA sign-off, expensive rollback, regulatory approvals, or multiple supported older versions. Those constraints may justify release branches, deployment approvals, and backport tracking.
