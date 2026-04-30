# Tags как release markers

## Локальная тренировка

Я создал локальный annotated tag:

```bash
git tag -a v1.5.0 -m "Release v1.5.0"
```

Потом проверил его:

```text
tag v1.5.0
Tagger: Sultan Nadirbek <eeza.csgo@gmail.com>
Date:   Fri May 1 00:19:51 2026 +0500

Release v1.5.0

commit 1626c44df5d42aae20f87039e8edf62a244fbff0
Author: Sultan Nadirbek <eeza.csgo@gmail.com>
Date:   Thu Apr 30 23:37:54 2026 +0500

    docs: add module 07 homework reference artifact
```

После проверки я удалил тренировочный tag локально, чтобы случайно не отправить его через `git push --tags`.

## Branch vs tag

Branch является движущейся линией работы. Tag является именованной отметкой конкретного commit. `main` может двигаться после каждого merge, а `v1.5.0` должен продолжать указывать на release commit версии `1.5.0`.

## Lightweight и annotated tags

Lightweight tag:

```bash
git tag v1.5.0
```

Annotated release tag:

```bash
git tag -a v1.5.0 -m "Release v1.5.0"
```

Для release обычно выбирают annotated tag, потому что он хранит metadata tag и message.

## Полезные команды

```bash
git tag --list
git show v1.5.0
git log v1.4.0..v1.5.0 --oneline
```

## Push policy

Не push-ить tags без release decision. Не использовать `git push --tags` как привычку, потому что так можно опубликовать локальные экспериментальные tags. Если release tag approved, push выполняется точечно по имени tag.

```bash
git push origin v1.5.0
```

Эта команда лучше, чем `git push --tags`, потому что отправляет только один осознанный release marker.

## Связь с release

Tags задают диапазон для changelog, связывают release notes с commit, помогают rollback и делают incident investigation конкретным.
