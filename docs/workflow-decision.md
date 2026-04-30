# Workflow decision

## Decision matrix

| Context | Recommended flow | Required gates | Release cadence | Rollback cost | Why this is enough | What would be too much | Residual risk |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Solo | short feature branch -> PR/self-review -> protected main -> deploy/tag | `make check`, clean status, no direct rushed commit | Irregular | Low | One owner can keep the process small and explicit | Long-lived `develop` and `release/*` for every change | Blind spots without external review |
| Small team | short feature branch -> PR -> protected main -> deploy/tag | Review, CI, protected main | Daily or weekly | Low to medium | Fast feedback matters more than staging bureaucracy | Permanent `develop` without QA or owner | Main can break if CI is weak |
| SaaS | short feature branch -> PR -> protected main -> deploy pipeline, with staging when risk grows | Review, CI, smoke checks, rollback plan | Frequent | Medium | Continuous delivery works if tests and rollback are mature | Manual release branch for every tiny change | Production incidents if observability is weak |
| Enterprise | feature/* -> review -> develop -> staging -> release/* -> main -> tag -> production | Review, CI, QA sign-off, release manager, protected release lines | Scheduled | High | Separate stabilization and QA reduce release risk | Skipping staging or unowned `develop` | Slower feedback and merge overhead |
| Regulated | feature/* -> review -> develop -> staging -> release/* -> main -> signed tag -> production | Review, CI, audit trail, approvals, release checklist, rollback evidence | Scheduled windows | Very high | Traceability and approvals are part of product safety | Informal direct deploy from `main` | Process can become slow if ownership is unclear |

## Flow variants

```text
short feature branch -> PR -> protected main -> deploy/tag
```

```text
feature/* -> review -> develop -> staging -> release/* -> main -> tag -> production
```

## Decision note for `ecommerce-platform`

Для текущего учебного `ecommerce-platform` я выбрал бы short feature branches, pull request review, protected `main`, `make check`, CI и deploy/tag по необходимости. Проект пока маленький, поэтому главная задача процесса - сохранить читаемую историю и не работать напрямую в `main`. Постоянный `develop` добавит процесс раньше, чем появится командное давление, которое его оправдывает. К более тяжелому flow стоит перейти, когда несколько разработчиков одновременно меняют связанные части продукта, QA нужна стабильная candidate line, появляются release windows или rollback становится дорогим. Тогда `develop` может стать integration line, staging сможет проверять конкретного кандидата, а `release/*` будет стабилизировать версию. Это решение нужно пересматривать при изменении зрелости CI, размера команды, support obligations или compliance needs.

## Проверка решения

- Сколько людей одновременно меняют один код?
- Насколько зрелый CI и что он реально проверяет?
- Есть ли QA или внешняя приемка?
- Как часто выходит release?
- Сколько стоит rollback?
- Нужно ли поддерживать старые версии?
- Есть ли regulatory или audit needs?

## Локальная проверка

```bash
make check
git status --short
```
