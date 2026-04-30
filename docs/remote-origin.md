# Remote repository and origin

## Local and remote model

Local repository is the Git repository on my machine. It contains my working tree, index and local history. Remote repository is another Git repository on a server, used by the team, review platform and CI.

The model is:

```text
local repository -> origin -> remote repository
```

`origin` is not a branch and not a special command. It is the local name of a remote. Git stores the URL behind that name in repository config.

## Working URL and review URL

For work I use SSH:

```text
git@github.com:<username>/ecommerce-platform.git
```

For Tyfoon review I send HTTPS:

```text
https://github.com/<username>/ecommerce-platform.git
```

## Example check

```text
origin  git@github.com:<username>/ecommerce-platform.git (fetch)
origin  git@github.com:<username>/ecommerce-platform.git (push)
```

## Before push

```bash
make check
git status --short
git remote -v
```

I check the remote before push because `git push` publishes commits to the configured remote. A wrong `origin` means the work can be sent to the wrong repository or rejected by permissions.
