# Fetch, pull, push and tracking

## Direction of movement

`git fetch` contacts the remote, downloads missing objects and updates remote-tracking refs such as `origin/main`. It does not rewrite my current local branch and does not change my working tree.

`git pull` is stronger. It fetches and then integrates the fetched history into the current branch by merge or rebase, depending on configuration.

`git push` sends my local commits to the remote and asks the server to update a remote branch.

```text
remote branch -> fetch -> origin/<branch> -> pull -> local branch
local branch -> push -> remote branch
```

## Upstream tracking

The first push of a homework branch should set upstream:

```bash
git push -u origin homework-v3-04-02-fetch-pull-push-tracking
```

`-u` records the remote branch paired with the local branch. After that `git branch -vv` and `git status` can show ahead/behind information.

Example:

```text
* homework-v3-04-02-fetch-pull-push-tracking a1b2c3d [origin/homework-v3-04-02-fetch-pull-push-tracking] docs: explain fetch pull push tracking
```

## Non-fast-forward

If push is rejected as non-fast-forward, I do not use force push by habit. First I run `git fetch origin`, inspect history and understand whose commits are on the remote branch.

## Local checks

```bash
make check
git status --short
git remote -v
git branch -vv
```
