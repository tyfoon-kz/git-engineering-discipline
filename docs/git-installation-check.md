# Git Installation Check

## Version check

```text
git version 2.x.x
```

This line confirms that Git is installed and visible in the terminal.

## Global configuration commands

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global init.defaultBranch main
git config --global --list
```

## What each setting means

- `user.name` signs future commits with the author name.
- `user.email` signs future commits with the author email.
- `init.defaultBranch main` makes new repositories start on `main`.

## Important clarification

These commands do not create a GitHub account. They only configure the local Git profile on this computer.

## If I see command not found

My first step is to stop and verify the installation again with `git --version`, because the terminal either does not see Git yet or Git is not installed.
