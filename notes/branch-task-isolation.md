# Branch как изоляция задачи

## Задача ветки

Эта ветка изолирует домашку `homework-v3-03-01-branch-task-isolation`. Ее задача не в том, чтобы менять общую линию проекта напрямую. Она показывает, что работа начинается в отдельной branch, проверяется локально и только потом может быть отправлена на review.

## Мой текущий контекст

Рабочая ветка:

```text
homework-v3-03-01-branch-task-isolation
```

Clean base для учебного repository:

```text
main
```

Команды проверки контекста:

```bash
git branch --show-current
git status --short
make check
```

## Почему branch не является копией папки

Branch в Git является именем, которое указывает на commit. Когда я создаю commit в этой ветке, двигается указатель `homework-v3-03-01-branch-task-isolation`, а `main` остается на своей точке. Это позволяет читать diff домашки отдельно от base.

## Почему не `main`

`main` в учебном repository является clean base. В корпоративной работе похожая линия обычно protected: туда не пушат руками из локальной машины. Feature branch готовит изменение к review, а не является обходом review.

## Local checks

Перед сдачей выполняются:

```bash
make check
git status --short
```
