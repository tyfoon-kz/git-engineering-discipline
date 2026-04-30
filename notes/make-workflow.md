# Make workflow

Repository для работы:

```text
git@github.com:student/ecommerce-platform.git
```

Review URL для Tyfoon:

```text
https://github.com/student/ecommerce-platform.git
```

`Makefile` хранит повторяемые команды проекта.
Я все еще понимаю команды Git внутри targets, но запускаю их через короткие имена, чтобы не вспоминать флаги каждый раз.

Targets:

```text
make help    показывает доступные команды проекта
make status  запускает git status --short
make log     показывает последние commits через git log --oneline --decorate -5
make diff    проверяет whitespace ошибки и показывает diff summary
make check   запускает базовую проверку перед вопросом или review
```

`make check` сейчас выполняет:

```bash
git status --short
git diff --check
```

Со временем этот target будет расти.
В Docker, PHP и Laravel проектах в `check` добавятся проверки контейнеров, линтеры, тесты и сборка, но привычка останется той же: перед review запустить один понятный вход в качество.
