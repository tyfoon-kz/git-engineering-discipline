# Navigation Notes

## Commands I used

```bash
pwd
mkdir -p training-space
cd training-space
pwd
mkdir ecommerce-platform
cd ecommerce-platform
pwd
ls
```

## What each command showed me

- `pwd` showed the current directory before I created anything.
- `mkdir -p training-space` created the base folder for practice work.
- `cd training-space` moved me into that folder.
- the next `pwd` confirmed that I was already inside `training-space`.
- `mkdir ecommerce-platform` created the project folder.
- `cd ecommerce-platform` moved me into the project folder.
- the final `pwd` confirmed the exact path of the project.
- `ls` showed the contents of the current folder.

## File, folder, extension

- A file stores конкретные данные, for example `README.md`.
- A folder organizes files and other folders, for example `ecommerce-platform`.
- An extension is the part after the dot, for example `.md` in `README.md`.

## Hidden file note

`.gitignore` is a hidden file because it starts with a dot. It is not dangerous or magical; it is simply hidden from visual noise in some interfaces.

## Typical mistake and recovery

- Mistake: `cd` into a folder that does not exist here.
- Recovery: run `pwd`, then `ls`, then verify the exact folder name before trying `cd` again.
