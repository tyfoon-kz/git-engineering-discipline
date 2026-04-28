# Staging Notes

## State walkthrough

### Before git add

- the changed file exists only in the working tree;
- `git status` shows it as modified;
- `git diff` shows the line-level difference.

### After git add

- the file is now in the staging area;
- `git status` shows it as staged;
- `git diff --staged` shows what will enter the next commit.

### After git commit

- the staged snapshot becomes part of the local repository history;
- `HEAD` moves to the new current commit.
