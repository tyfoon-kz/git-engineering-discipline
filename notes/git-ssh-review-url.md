# Git, SSH и URL для ревью

Repository для работы:

```text
git@github.com:student/ecommerce-platform.git
```

Review URL для Tyfoon:

```text
https://github.com/student/ecommerce-platform.git
```

Проверка Git:

```bash
git --version
```

Ожидаемый результат - установленная версия Git, например `git version 2.44.0` или новее.

Проверка SSH:

```bash
ssh -T git@github.com
```

Ожидаемый результат - GitHub узнает пользователя по SSH ключу и сообщает, что shell access не предоставляется.
Это нормально, потому что SSH здесь нужен для Git операций, а не для входа на сервер.

Проверка remote:

```bash
git remote -v
```

`origin` должен использовать SSH адрес `git@github.com:student/ecommerce-platform.git`.
В Tyfoon отправляется HTTPS URL, потому что reviewer открывает его в браузере.

Приватный SSH ключ нельзя отправлять в чат, репозиторий, Tyfoon или скриншоты.
Публичный ключ с расширением `.pub` можно добавить в GitHub account settings.
