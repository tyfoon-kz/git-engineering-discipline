# Corporate Git anti-patterns

## Catalog

| Anti-pattern | Symptom | Risk | Root cause | Corrective action | Owner | Verification signal |
| --- | --- | --- | --- | --- | --- | --- |
| Direct commits to protected line | Commits appear on `main` without PR | Unreviewed production change | Branch not protected or bypass culture | Enable protection and require checks | Tech lead | No direct commits in audit |
| Long-lived feature branches | Branches live for weeks | Late conflicts and huge PRs | Large batches, no flags | Split work and merge smaller increments | Feature owner | Median branch age decreases |
| Broken CI ignored | Red checks are treated as normal | Bad changes merge | Flaky tests and weak ownership | Stabilize CI and make checks required | CI owner | Red blocks merge |
| Release branch as second develop | Features enter `release/*` after freeze | Candidate never stabilizes | No release owner | Protect `release/*` and allow blocker fixes only | Release owner | Release diff contains approved fixes |
| Hotfix not backported | Patch exists only in production line | Bug returns in next release | No backport checklist | Track affected lines and backport status | Incident owner | Backport issue closed |
| Environment branch confusion | Team says "staging branch was tested" | Unknown deployed commit | Branch/environment mixed | Record commit and artifact per environment | DevOps owner | Deployment record has SHA |
| No rollback plan | Bad deploy triggers panic | Long outage | Release checklist incomplete | Require rollback note before deploy | Release owner | Each release has rollback step |
| Branch naming without rules | Many prefixes, no enforcement | False sense of process | Process copied without gates | Document roles and enforce permissions | Tech lead | Rules match repository settings |

## 30-day remediation plan

Days 1-7: document current flow, list protected lines, add `make check` to PR checklist, and require CI on `main`.

Days 8-20: protect `release/*`, define release owner, add hotfix backport checklist, and record deployed commit for staging and production.

Days 21-30: measure branch lifetime, split the largest active PRs, remove unused branch prefixes, and update onboarding docs.

## What not to do

Do not ban long-lived branches overnight if the team lacks feature flags and tests. Do not add approvals without owners. Do not introduce release branches without release criteria. Do not bypass CI because it is flaky; fix ownership and quarantine flaky checks instead.

## Local checks

```bash
make check
git status --short
```
