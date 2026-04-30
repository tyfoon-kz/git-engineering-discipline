# Release, hotfix and support model

## Release branch lifecycle

1. Create `release/1.4` from approved base.
2. Freeze scope: no new features without release owner approval.
3. Fix blockers only.
4. Run `make check`, CI, smoke checks, and release checklist.
5. Tag the exact release commit, for example `v1.4.0`.
6. Merge or cherry-pick release fixes back to the future line.
7. Close the branch after release support decision is recorded.

## Hotfix lifecycle

1. Detect production incident and identify affected release tag.
2. Create `hotfix/<issue>` from production line or exact tag.
3. Apply focused fix and run checks.
4. Review with incident owner.
5. Tag patch release, for example `v1.4.1`.
6. Deploy patch.
7. Backport the fix to future and support lines.

## Support lines

| Line | Meaning | Allowed changes | Owner |
| --- | --- | --- | --- |
| `main` | Current production-ready line | Approved release and hotfix merges | Release owner |
| `release/1.4` | Stabilization or patch line for 1.4 | Blocker fixes and patch fixes | Release owner |
| `support/1.3` | Supported older minor version | Security and critical bug fixes | Support owner |

## Backport decision checklist

- Which versions are affected?
- Is the bug security, data-loss, payment, or availability related?
- Does the patch apply cleanly to older lines?
- What tests prove the backport?
- Which tags and release notes must mention it?

## Failure modes

1. Release branch accepts features after freeze. Protect `release/*` and require release owner approval.
2. Hotfix is deployed but not backported. Track affected lines and backport status.
3. Tag is created before checks pass. Require release checklist before tag.

## Local checks

```bash
make check
git status --short
```
