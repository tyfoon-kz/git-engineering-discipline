# Smoke check

Repository для работы:

```text
git@github.com:student/ecommerce-platform.git
```

Review URL для Tyfoon:

```text
https://github.com/student/ecommerce-platform.git
```

Стартовые проверки:

```bash
pwd
git --version
git rev-parse --show-toplevel
make help
make status
```

Проверки перед review:

```bash
make diff
make check
git remote -v
```

Ожидаемый результат:

```text
Я нахожусь в корне проекта ecommerce-platform.
Git доступен в терминале.
Makefile найден, help показывает targets.
make check выполняет базовую проверку Git.
origin использует SSH URL для работы.
В Tyfoon отправляется HTTPS URL.
```

Smoke check не доказывает, что проект идеален.
Он показывает, что базовый рабочий контур жив и работу можно осмысленно отправлять на review.
