# Protected main

## Назначение

`main` является общей protected line. Разработчик не использует ее как личный workbench, потому что от этой линии зависят другие участники команды, CI, release process и production delivery.

## Схема

```text
feature/catalog-filter
  -> pull request
  -> review
  -> CI
  -> protected main
```

## Gates

Review gate: другой инженер читает diff, задает вопросы по рискам и проверяет, что изменение соответствует задаче.

CI gate: pipeline запускает повторяемые проверки из чистого состояния. Локальный `make check` снижает шум до push, но remote CI остается обязательным gate перед merge.

Protection gate: direct push и force push в `main` запрещены. Merge выполняет maintainer или code owner после зеленых checks и принятого review.

## Что считается ошибкой

- Сделать commit прямо в `main` и пытаться отправить его в remote.
- Самостоятельно merge-ить свою задачу без review.
- Merge-ить pull request с красным CI.
- Обходить checks фразой "у меня локально работает".
- Считать маленький diff безопасным без review.

## Как проверить перед отправкой

```bash
make check
git status --short
```

Ожидаемое состояние перед review: `make check` не показывает ошибок `git diff --check`, а `git status --short` показывает только ожидаемые изменения или пустой вывод после commit.
