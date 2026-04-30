# Fix Staging and Split Changes

Если в staging area случайно попали две разные задачи, commit нужно остановить до сохранения истории. Сначала я читаю будущий commit:

```bash
git diff --staged
```

Если там есть лишний файл, я убираю его из staging area:

```bash
git restore --staged notes/other-task.md
```

Эта команда не удаляет работу из working tree. Она только говорит Git не включать выбранный файл в следующий commit. После этого можно собрать первый маленький commit, затем отдельно добавить вторую задачу и сделать второй commit.

Split changes нужен, чтобы reviewer видел одну мысль за раз.
