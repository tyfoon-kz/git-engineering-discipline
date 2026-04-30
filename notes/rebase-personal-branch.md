# Rebase личной ветки

## Что было сделано руками

Я создал две тренировочные ветки от одной исходной точки `05f504b`.

`practice/rebase-base` получила commit `20487bb` с файлом `practice/rebase-base.txt`. `practice/rebase-topic` получила commit `7f12855` с файлом `practice/rebase-topic.txt`. После этого я выполнил rebase topic branch поверх base branch. Topic commit получил новый hash `e87bf34`, потому что его parent изменился.

## До rebase

До rebase две ветки расходились от одного commit:

```text
* 7f12855 practice/rebase-topic
| * 20487bb practice/rebase-base
|/
* 05f504b homework branch
```

## После rebase

После rebase topic commit применен заново поверх `practice/rebase-base`:

```text
* e87bf34 practice/rebase-topic
* 20487bb practice/rebase-base
* 05f504b homework branch
```

`e87bf34` является новым commit. Его смысл похож на старый `7f12855`, но hash другой, потому что изменился parent commit. Это и есть replay commits, а не простое перемещение старого commit.

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

## Corporate note

В этой домашке rebase был безопасным, потому что работал на тренировочной личной ветке. Так нельзя обращаться с protected `main`, `develop`, `release/*` или веткой, на которую уже опирается reviewer или другой разработчик. Published history является командным контрактом.
