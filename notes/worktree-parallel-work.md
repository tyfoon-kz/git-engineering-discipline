# Worktree для параллельной работы

## Когда worktree полезен

Worktree полезен, когда текущая папка занята одной задачей, но нужно открыть другую ветку без постоянного `git switch`. Например, можно оставить feature branch в основной папке и открыть homework или hotfix в отдельной рабочей папке.

## Пример команды

```bash
git worktree add ../tmp/v3-worktrees/homework-v3-03-05-worktree-parallel-work -b homework-v3-03-05-worktree-parallel-work main
git worktree list
```

Эта команда создает linked working folder для отдельной ветки. Git objects переиспользуются из того же repository, поэтому это не полный независимый clone.

## Чем worktree отличается от clone

Clone создает отдельный repository со своим `.git` storage и своим remote context. Worktree является дополнительной рабочей папкой того же repository. У него отдельные working files и index, но общая история объектов.

## Hygiene checklist

В каждой рабочей папке отдельно проверяются:

```bash
pwd
git branch --show-current
git status --short
make check
```

Чистый status в одной папке не доказывает чистоту другой папки.

## Связь с corporate flow

Worktree помогает держать задачи раздельно физически, но не отменяет branch discipline. Feature branch после локальных проверок идет в review и CI. Она не должна напрямую попадать в protected `main`.
