# Status, Diff and Staged Diff

`git status` отвечает на вопрос: какие файлы изменены и где они находятся. Он показывает, что уже подготовлено в staging area, а что остается только в working tree.

`git diff` показывает разницу между staging area и working tree. Если файл уже добавлен через `git add`, обычный diff может стать пустым, потому что рабочая версия совпадает с подготовленной версией.

`git diff --staged` показывает разницу между `HEAD` и staging area. Это будущий commit.

```text
HEAD -> staging area -> working tree

git diff          = staging area vs working tree
git diff --staged = HEAD vs staging area
```

Перед commit я читаю status, diff и staged diff, чтобы не сохранять историю вслепую.
