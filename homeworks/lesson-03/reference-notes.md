# Lesson 03 Reference Notes

## Commit structure

The reference branch demonstrates two separate commits:
- one commit for catalog documentation;
- one commit for payment documentation and the explanation note.

## What should remain only in working tree during the exercise

During the student exercise, a third independent change should exist outside the staged set before the second commit.

Example:
- a draft README update describing shipping or support modules;
- it remains only in working tree because it does not belong to the same logical commit as catalog or payment documentation.

## Why this matters

This separation proves that the student understands:
- working tree is not the same as staging;
- not every current change should enter the next commit;
- commit boundaries are chosen deliberately.
