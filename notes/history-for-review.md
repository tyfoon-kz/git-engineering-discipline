# History for Review

Reviewer читает не только финальные файлы. Он читает путь изменения: commits, messages и diff. Если история состоит из `fix`, `update` и случайных больших commits, review становится дороже.

Перед отправкой работы я проверяю:

```bash
make status
make diff
make history
make check
```

Через `git show HEAD` нужно проверить последний commit: соответствует ли diff сообщению, нет ли случайных файлов, видно ли одну инженерную мысль.

Readable history помогает reviewer быстрее понять риск. Она также помогает future self найти причину изменения и готовит проект к release process, где commits могут стать источником release notes.
