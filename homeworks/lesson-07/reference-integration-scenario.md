# Lesson 07 Reference Integration Scenario

## Expected repository state

- `feature/catalog-structure` is integrated into `main` through `merge`.
- `feature/cart-description` is rebased onto the updated `main`.
- `review/cart-readiness` exists as a separate branch created from a dedicated worktree context.
- `review/cart-readiness` contains `docs/worktree-checklist.md`.

## Why the scenario matters

- `merge` keeps the integration fact visible on `main`;
- `rebase` cleans up a private branch against the latest base;
- `worktree` gives a separate review context without destroying local state in the main checkout.

## Reviewer checklist

- the merge result is visible on `main`;
- the cart branch is based on the current `main`;
- the review branch exists and contains a meaningful checklist file;
- the student can explain why each tool was used.
