# Feature branches и naming

## Назначение feature branch

Feature branch является рабочей линией задачи. Она отделяет изменения от clean base и дает reviewer понятный scope. В будущей командной работе такая ветка публикуется, проходит review и CI, а не пушится напрямую в protected `main`.

## Правило naming

Простое правило для команды:

```text
<type>/<short-lowercase-slug>
```

Для учебных homework используется точный branch name из задания:

```text
homework-v3-03-02-feature-branches-naming
```

Slug пишется lowercase, слова разделяются дефисами, пробелы и личные сокращения не используются.

## Хорошие имена

```text
feature/catalog-filter
fix/cart-total-rounding
docs/branch-naming-guide
refactor/checkout-summary
homework-v3-03-02-feature-branches-naming
```

Эти имена показывают тип работы и предмет изменения.

## Плохие имена

```text
test
fix
new
final-final
sultan-work
```

Эти имена не объясняют scope. Reviewer не понимает, какую задачу должна закрывать ветка.

## Путь feature branch

```text
feature branch -> review -> CI -> protected main
```

Branch name помогает начать коммуникацию, но не заменяет `make check`, маленькие commits, review и protected branch rules.

## Local checks

```bash
make check
git status --short
```
