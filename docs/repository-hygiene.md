# Repository hygiene

## Что хранить в Git

В Git храним source code, tests, documentation, `Makefile`, `.env.example`, changelog, release notes и небольшую hand-written configuration, которая определяет поведение проекта.

## Что не хранить в Git

Не commit-им real secrets, local `.env`, logs, cache, generated build output, coverage reports, OS files, editor state и temporary exports без явной причины команды.

## Tracked files

`.gitignore` влияет на untracked files. Если файл уже tracked, Git продолжит показывать его изменения даже после добавления ignore rule. Чтобы перестать отслеживать local-only file, используют:

```bash
git rm --cached path/to/file
```

Это нужно review-ить осторожно. Если secret уже опубликован, его нужно rotate и обрабатывать как incident.

## Release checklist

```bash
git status --short
git diff --check
make check
```

В release branch должны быть только осознанные files. Changelog и release notes являются нормальными release artifacts. Logs, local environment files и generated temporary output не являются нормальными release artifacts.
