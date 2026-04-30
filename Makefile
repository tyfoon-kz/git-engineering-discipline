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
	test -f docs/reflog-stash.md
	grep -qi "reflog" docs/reflog-stash.md
	grep -qi "recovery branch" docs/reflog-stash.md
	grep -qi "stash" docs/reflog-stash.md
	grep -qi "temporary" docs/reflog-stash.md
	git diff --check
