# Types, scopes и breaking changes

## Разрешенные types

| Type | Смысл | Хороший пример | Плохой пример |
| --- | --- | --- | --- |
| `feat` | Новое совместимое поведение | `feat(catalog): add brand filter` | `feat: update files` |
| `fix` | Исправление observable behavior | `fix(payment): round total before capture` | `chore: fix payment rounding` |
| `docs` | Только документация | `docs(release): add rollback checklist` | `docs(api): remove response field` |
| `refactor` | Структура кода без изменения поведения | `refactor(cart): extract total calculator` | `refactor(api): rename public field` |
| `test` | Тесты или fixtures | `test(checkout): cover empty address validation` | `test: misc` |
| `chore` | Обслуживание repository или tooling | `chore(repo): ignore coverage output` | `chore: important bug` |

## Разрешенные scopes

Используем области продукта и инженерные слои:

```text
catalog, cart, checkout, orders, payment, auth, api, repo, release
```

Не используем scopes вроде `misc`, `stuff` или имена файлов вроде `OrderService.php`.

## Breaking changes

Breaking change должен быть виден в заголовке и объяснен в footer.

```text
feat(api)!: replace checkout response items field

BREAKING CHANGE: `items` is replaced by `lines` in checkout response.
Clients must update response parsing before upgrading.
```

Breaking change означает, что существующие потребители могут сломаться после upgrade. Размер diff не важен.

## Review checklist

- Type описывает impact, а не папку файла.
- Scope помогает найти область продукта.
- Description называет конкретное поведение.
- Breaking changes содержат `!` и `BREAKING CHANGE`.
- Release notes и SemVer impact соответствуют сообщению.
