# Merge и fast-forward

## Fast-forward

Fast-forward возможен, когда base branch является предком feature branch. Git не создает новый commit, а передвигает branch pointer вперед.

До merge:

```text
main
  |
  v
A -- B -- C
          ^
          |
feature/task
```

После fast-forward `main` указывает на `C`:

```text
A -- B -- C
          ^
          |
main, feature/task
```

## Merge commit

Merge commit нужен, когда две линии развивались независимо.

```text
A -- B -- D ---- M
      \        /
       C -----
```

Commit `M` имеет двух родителей. Он фиксирует, что история из линии `D` и история из линии `C` соединены в одной точке.

## Почему это важно для review

Merge не является случайным склеиванием файлов. Он зависит от commit graph. В corporate flow feature branch обычно проходит review и CI до попадания в protected line. Локальный merge в `main` и push напрямую не является правильной моделью для protected `main`.

## Команды диагностики

```bash
git log --oneline --decorate --graph -8
git status --short
make check
```
