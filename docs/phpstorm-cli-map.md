# PhpStorm and CLI Map

## Built-in terminal

Inside PhpStorm, the built-in terminal should point to the same project folder as the regular terminal. That is why I can run `pwd` and `git status` there first.

## CLI to UI mapping

- `git status` -> changed files indicator / version control tool window.
- `git diff` -> file diff view in the editor or version control panel.
- `git log --oneline` -> Git log / history view.

## When CLI is still the safest choice

If I am unsure where I am or what state Git is showing, I go back to the CLI first because the commands are explicit and leave less room for guessing.

## Why this matters

PhpStorm does not create a separate Git reality. It shows the same repository state through a graphical interface.
