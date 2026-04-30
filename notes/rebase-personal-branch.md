# Rebase личной ветки

## До rebase

Feature branch создана от старой базы, а `main` ушел вперед:

```text
A -- B -- E  main
      \
       C -- D  feature/task
```

## После rebase

Commits feature branch применены заново поверх свежей базы:

```text
A -- B -- E  main
           \
            C' -- D'  feature/task
```

`C'` и `D'` являются новыми commits. Их смысл похож на старые `C` и `D`, но hashes другие, потому что изменился parent commit.

## Safe zone

Rebase уместен для личной локальной ветки, которую еще никто не использует. В этой зоне rebase помогает прочитать историю линейно и проверить работу поверх свежего base.

## Danger zone

Опасно переписывать опубликованную историю без договора команды:

```text
protected main
develop
staging
release/*
shared feature branch
ветка с открытым review, где другие люди уже смотрят commits
```

После rebase и force update у коллег может остаться старая цепочка commits. Это создает diverged history и лишние conflicts.

## Проверки после rebase

После rebase нужно выполнить:

```bash
git log --oneline --decorate --graph -8
make check
git status --short
```

Rebase меняет базу работы, поэтому локальные проверки обязательны перед review.
