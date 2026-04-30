# Tags как release markers

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

## Связь с release

Tags задают диапазон для changelog, связывают release notes с commit, помогают rollback и делают incident investigation конкретным.
