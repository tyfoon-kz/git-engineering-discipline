# Conflict explanation

## Why conflicts happen

Git can merge independent changes automatically. A conflict appears when two branches changed the same area and Git cannot safely choose the final result. This is not a Git failure. It is a request for a human decision.

## Conflict markers

```text
<<<<<<< HEAD
text from the current branch
=======
text from the incoming branch
>>>>>>> origin/main
```

`HEAD` is the current side. The separator divides the two versions. The last line names the incoming side. The final file must not contain these markers.

## Resolution order

1. Run `git status --short`.
2. Open the conflicted file.
3. Read both sides and understand the intended meaning.
4. Write one final version that preserves the correct behavior or explanation.
5. Remove markers.
6. Run checks.

I do not use automatic "accept all current" or "accept all incoming" without reading the conflict.

## Review explanation

```text
Conflict was in docs/fetch-pull-push-tracking.md.
Current branch explained fetch as remote inspection.
Incoming branch added a warning that pull changes the current branch.
Final version keeps both: fetch updates origin/* without touching working tree, pull integrates changes into the local branch.
Checked with make check and git diff --check.
```

## Checks after resolution

```bash
make check
git status --short
git diff --check
```
