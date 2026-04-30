# PhpStorm и проверка через CLI

PhpStorm помогает видеть Git-состояние рядом с кодом, но не заменяет Git. IDE показывает те же факты, которые можно проверить в терминале.

```text
PhpStorm modified files -> git status или make status
PhpStorm diff viewer    -> git diff или make diff
PhpStorm commit window  -> выбор изменений, git add и git commit
Git history в IDE       -> git log --oneline --decorate
```

Рабочий сценарий:

```text
1. Я меняю файл в PhpStorm.
2. Проверяю состояние через make status.
3. Смотрю diff в IDE или через make diff.
4. Создаю commit с понятным сообщением.
5. Снова запускаю make status и make check.
6. Проверяю ближайшую историю через git log --oneline --decorate -3.
```

Если PhpStorm показывает измененный файл, а `make status` ничего не показывает, сначала нужно проверить корень проекта. Частая причина - IDE открыла один repository, а терминал находится в другой папке.

Reviewer не видит мою IDE. Он видит commits, diff и результаты проверок. Поэтому даже если commit создан через PhpStorm, локальная CLI-проверка остается общей точкой истины для команды.
