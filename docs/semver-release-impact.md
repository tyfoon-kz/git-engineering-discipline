# SemVer release impact

## MAJOR.MINOR.PATCH

`PATCH` используют для backward compatible bug fixes. `MINOR` используют для backward compatible new functionality. `MAJOR` используют для incompatible contract changes. Главный вопрос не в количестве измененных файлов, а в том, могут ли существующие потребители безопасно обновиться.

## Примеры impact

| Commit | Signal | User impact | Version impact |
| --- | --- | --- | --- |
| `fix(payment): round total before capture` | fix | Исправляет расчет суммы оплаты | patch |
| `feat(catalog): add brand filter` | feat | Добавляет совместимый фильтр каталога | minor |
| `docs(release): add rollback checklist` | docs | Улучшает release документацию | сам по себе не требует public bump |
| `chore(repo): ignore coverage output` | chore | Очищает repository workflow | сам по себе не требует public bump |
| `feat(api)!: replace checkout response items field` | breaking feature | API clients должны обновить parsing | major |

## Самый сильный signal wins

Если release содержит три fixes, одну feature и один breaking change, breaking change определяет release impact. Если release содержит fixes и одну feature, feature обычно ведет к minor version.

## Связь с Module 05

Release decision принимается до tag и production. Команда сравнивает commits после предыдущего tag, проверяет release notes и выбирает следующую версию по самому сильному release signal.

## Связь с Module 06

Hotfix и backport обычно дают patch releases в support lines. Support release должен содержать минимальный безопасный fix, а не unrelated features из main integration line.
