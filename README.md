# Учебный repository курса Git

Этот repository используется как полигон для домашних заданий и эталонных решений курса Git Engineering Discipline. Он начинается с минимального набора файлов, чтобы каждое изменение было видно в истории.

## Рабочий процесс

Все команды выполняются из корня repository. Повторяемые проверки записаны в `Makefile`, чтобы проект сам хранил рабочий контракт.

```bash
make status
make diff
make check
```

## Review

Студент работает со своим repository через SSH URL:

```text
git@github.com:<username>/ecommerce-platform.git
```

В Tyfoon отправляется HTTPS URL:

```text
https://github.com/<username>/ecommerce-platform.git
```
