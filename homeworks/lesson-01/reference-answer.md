# Lesson 01 Reference Answer

## Topic

Why Git is not just convenient, but structurally important for product development.

## 1. Five risks of development without Git

### 1. Loss of traceability

Without Git, the team cannot reliably answer who changed a file, when the change happened, and why it was introduced. This destroys accountability and makes debugging slower.

### 2. Unsafe rollback

If a change breaks checkout, catalog indexing, or payments, the team needs a precise rollback path. Folder copies and ad hoc archives do not provide controlled partial rollback.

### 3. Chaotic collaboration

When several developers touch the same codebase, local copies and manual file exchange quickly lead to overwritten work, accidental divergence, and hidden conflicts.

### 4. Low experiment safety

Without cheap branching, every experiment feels dangerous. Developers either avoid trying solutions or mix unfinished work into the main code line.

### 5. Weak release discipline

If the team cannot reconstruct which changes entered a release, incident analysis becomes expensive. The system may ship unknown combinations of fixes, refactors, and unfinished ideas.

## 2. Git compared with SVN

### History model

SVN keeps the authoritative history in a central server. Git gives each developer a full local copy of history. This means inspection, commits, branching, and many recovery scenarios remain available even without network access.

### Branching

Branching in Git is cheap and natural, so teams use it constantly. In SVN, branching exists, but it is heavier both technically and culturally, which discourages frequent isolated work.

### Collaboration

Git encourages local cleanup of changes before publication. A developer can assemble a clean story first and push it only when it is ready. SVN workflows tend to keep more pressure on the central line.

## 3. Why Git is especially useful for e-commerce

An e-commerce platform evolves in parallel across several domains:
- catalog;
- cart;
- checkout and payments;
- delivery logic;
- admin back office;
- infrastructure and deployment.

These streams of work rarely move at the same pace. Git helps because it allows the team to isolate domain changes in branches, review them independently, integrate them deliberately, and recover safely when a release introduces a defect.

For example:
- a payment hotfix can be isolated from catalog refactoring;
- a release branch can be stabilized while feature work continues elsewhere;
- a broken experiment can be rolled back without destroying unrelated work;
- the team can inspect exactly which commits entered a release and why.

## 4. Conclusion

Git is not just a tool for storing code. It is a system for managing change. Its real value appears when a product team needs safe branching, readable history, controlled integration, and reliable recovery. For an e-commerce product, where multiple business-critical parts evolve at once, Git reduces delivery risk and increases engineering control.
