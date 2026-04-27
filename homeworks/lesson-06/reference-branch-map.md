# Lesson 06 Reference Branch Map

## Expected topology

- `main` stays clean and contains no feature work.
- `feature/catalog-structure` is created from `main` and contains only `docs/catalog.md`.
- `feature/cart-description` is created from `main` and contains only `docs/cart.md`.

## Engineering point

The task is not about naming branches for the sake of process. It is about isolating two independent concerns so they can be reviewed, integrated, delayed, or discarded separately.

## Reviewer checklist

- both feature branches exist remotely;
- both branches start from the same clean base;
- catalog changes are not mixed with cart changes;
- `main` remains a stable baseline.
