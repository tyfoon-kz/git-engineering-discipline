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
	test -f docs/restore-reset-revert.md
	grep -qi "working tree" docs/restore-reset-revert.md
	grep -qi "staging" docs/restore-reset-revert.md
	grep -qi "published history" docs/restore-reset-revert.md
	grep -qi "reset --hard" docs/restore-reset-revert.md
	git diff --check
