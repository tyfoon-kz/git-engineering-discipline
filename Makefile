.PHONY: help status diff log check

help:
	@echo "make status  Show short Git status"
	@echo "make diff    Check whitespace and show docs diff"
	@echo "make log     Show recent history"
	@echo "make check   Run local homework checks"

status:
	git status --short

diff:
	git diff --check
	git diff --stat

log:
	git log --oneline --decorate -5

check:
	test -f docs/backport-support-line.md
	grep -qi "support line" docs/backport-support-line.md
	grep -qi "backport" docs/backport-support-line.md
	grep -qi "cherry-pick -x" docs/backport-support-line.md
	grep -qi "develop" docs/backport-support-line.md
	git diff --check
