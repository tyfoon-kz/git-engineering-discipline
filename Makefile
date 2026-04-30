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
	test -f docs/hotfix.md
	grep -qi "hotfix" docs/hotfix.md
	grep -qi "production" docs/hotfix.md
	grep -qi "protected main" docs/hotfix.md
	grep -qi "follow-up" docs/hotfix.md
	git diff --check
