# Good Commit Message

Сообщения `fix`, `update` и `misc` плохо помогают команде. Они не объясняют, зачем commit появился, и заставляют reviewer открывать diff без контекста.

Лучшие варианты:

```text
fix -> Explain atomic commit boundary
update -> Document staged diff workflow
misc -> Add review history checklist
```

Хорошее сообщение отражает смысл commit, а не просто список файлов. Если изменен `README.md`, message все равно должен объяснять причину изменения.

Conventional Commits позже сделают эту привычку формальным контрактом: тип и смысл будут читаться одинаково человеком и tooling. Сейчас важно научиться писать содержательную часть сообщения.
