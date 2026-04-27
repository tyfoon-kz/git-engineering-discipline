# Fetch vs Pull

## Fetch

`fetch` updates knowledge about remote history without integrating it into the current branch.

## Pull

`pull` usually performs `fetch` and then tries to integrate the new state into the current branch.

## Practical difference

`fetch` is safer as a first step because it gives the developer a chance to inspect and choose the integration strategy before local history changes.
