# Why Version Control Matters

## What a version is

A version is the state of the same work at a specific moment in time.

## Why the final-final approach breaks down

1. Nobody can say with confidence which copy is the current working state.
2. Two people can edit different copies and later have no clean way to merge their work.
3. It becomes hard to explain why a change happened, because the folder name stores almost no meaning.

## Why change history matters

A project needs change history because the team must understand:
- what changed;
- who changed it;
- why it changed;
- how to compare one state with another;
- how to roll back one bad step without deleting everything else.

## E-commerce example

Imagine that one person changes the catalog, another adjusts the cart, and a third fixes discount logic. Without version control, the team can easily lose the working pricing state or release the wrong folder by accident.

## Short comparison with SVN

`SVN` also solves the history problem, so Git was not the first version control system. Git became the dominant choice because local history and cheap branching fit team development especially well.
