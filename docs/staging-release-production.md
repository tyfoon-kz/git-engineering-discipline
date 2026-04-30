# Staging, release и production

## Branch vs environment

Branch это линия истории в Git, которая указывает на commit. Environment это runtime-место, где запущен конкретный commit или artifact. Поэтому `staging` нельзя понимать только как имя ветки. Важнее знать, какой commit задеплоен и какие проверки он прошел.

## Схема

```text
develop
  -> staging candidate
  -> staging environment
  -> release/1.8.0
  -> main
  -> tag v1.8.0
  -> production artifact
```

## Staging checks

На staging команда проверяет конкретный commit или build artifact. Минимальный набор: smoke checks, QA сценарии, acceptance по критичным потокам, фиксация version и список найденных issues. Если тестировали один artifact, а выпустили другой, staging не дал надежного доказательства.

## Release branch

`release/1.8.0` стабилизирует конкретную версию. В эту линию можно добавлять release-blocking fixes, version bump, release notes и небольшие правки документации. Новые features туда не добавляют, потому что scope версии уже заморожен.

## Tag и production

Tag `v1.8.0` нужен, потому что branch может двигаться. Tag фиксирует конкретный release commit, из которого построен production artifact. Это помогает расследовать incidents, писать release notes и выполнять rollback.

## Ошибки процесса

- На staging проверили одну сборку, а в production выпустили другую.
- Команда не знает commit, который сейчас работает на staging.
- Release fix остался только в `release/1.8.0` и не вернулся в integration line.
- Tag создали до финального QA sign-off.
- Production описывают как "примерно latest main".

## Локальная проверка

```bash
make check
git status --short
```
