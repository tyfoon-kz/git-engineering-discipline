# Контракт Conventional Commits

## Назначение

Commit message в этом repository является частью командного договора. Его читает автор, reviewer, release manager, support engineer и будущий maintainer. Сообщение должно объяснять смысл изменения до чтения полного diff.

## Формат

```text
type(scope): description
```

`type` описывает release impact. `scope` показывает область продукта или инженерный слой. `description` коротко называет конкретное поведение.

## Хорошие примеры

- `feat(catalog): add brand filter` - новая возможность в каталоге.
- `fix(checkout): reject empty delivery address` - исправление поведения checkout.
- `docs(release): describe rollback checklist` - документация release process.
- `chore(repo): ignore local coverage output` - обслуживание repository.
- `refactor(cart): extract total calculation service` - refactor без изменения поведения.

## Плохие примеры

- `fix` - нет области и поведения.
- `update` - нет release signal.
- `feat: stuff` - слишком размыто для review.
- `chore: fix payment rounding` - bug fix спрятан под `chore`.
- `docs(api): remove required response field` - может скрывать breaking change.

## Связь с release flow

В Module 05 изменение проходит review, CI, staging, release decision, tag и production. Conventional Commits помогают release manager сгруппировать изменения, написать release notes и проверить, является следующая версия patch, minor или major.

## Связь с hotfix и backport

В Module 06 support engineer может искать fix, который нужно cherry-pick или backport. Сообщение `fix(payment): round order total before capture` надежнее, чем `update`, потому что сразу показывает область и смысл.

## Local Checks

Перед отправкой ветки:

```bash
make check
git status --short
```

В repository должны остаться только осознанные файлы.
