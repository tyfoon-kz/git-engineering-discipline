# Conventional Commits Cheat Sheet

Official specification:
- `https://www.conventionalcommits.org/en/v1.0.0/`

## Base format

```text
type(optional-scope): short description
```

## Fast examples

- `feat(cart): add coupon field`
- `fix(auth): handle expired refresh token`
- `docs(readme): explain local setup`
- `refactor(catalog): split price formatter`
- `chore(deps): update laravel pint`

## Breaking change markers

- Prefix form: `feat(api)!: replace legacy order payload`
- Footer form: `BREAKING CHANGE: clients must send order lines as objects`
