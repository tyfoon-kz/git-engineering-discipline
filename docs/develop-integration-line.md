# Develop integration line

## Назначение

`develop` нужен команде, когда несколько feature branches должны встретиться до staging, release и production. Это integration line, а не production line и не место для незавершенной работы.

## Схема

```text
feature/catalog-filter
  -> pull request
  -> review
  -> CI
  -> develop
  -> integration checks
```

## Что означает merge в `develop`

Merge в `develop` означает, что изменение прошло review и базовые проверки для общей интеграции. Это не означает, что изменение готово к production. Впереди могут быть staging, QA, release branch, tag и deploy decision.

## Правила линии

- Feature branch живет недолго и содержит одну задачу.
- Merge в `develop` идет только через pull request.
- Required checks должны быть зелеными.
- У линии есть owner, который реагирует на поломку integration checks.
- Незавершенная работа не попадает в `develop` под обещание "потом доделаем".

## Когда `develop` может быть лишним

Если команда маленькая, CI быстрый и надежный, rollback дешевый, а release идет часто, workflow `short feature branch -> PR -> protected main -> deploy/tag` может быть достаточным. В таком случае отдельный `develop` увеличит coordination cost и задержит feedback без явной пользы.

## Локальная проверка

```bash
make check
git status --short
```
