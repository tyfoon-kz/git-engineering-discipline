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
	test -f docs/cherry-pick.md
	grep -qi "cherry-pick" docs/cherry-pick.md
	grep -qi "source" docs/cherry-pick.md
	grep -qi "target" docs/cherry-pick.md
	grep -qi "conflict" docs/cherry-pick.md
	git diff --check
