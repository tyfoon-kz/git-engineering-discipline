# Release Notes v1.5.0

## Tag

`v1.5.0`

## Summary

Release добавляет фильтрацию каталога по бренду и исправляет сохранение количества товара в корзине после refresh.

## Included changes

- Добавлен фильтр каталога по бренду.
- Исправлено сохранение количества товара в корзине.
- Обновлен rollback checklist для release operations.

## SemVer reasoning

Release является minor, потому что содержит backward compatible feature. Breaking changes нет.

## Checks

- `make check`
- Checkout smoke test
- Catalog filter smoke test

## Risks

- Catalog query нужно проверить с пустым и несколькими brand filters.
- Cart refresh нужно проверить перед production.

## Rollback

Если checkout или catalog smoke checks падают, redeploy previous artifact from `v1.4.0`.

## Owner

Release owner: engineering team.
