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
	test -f docs/published-history-safe-undo.md
	grep -qi "published history" docs/published-history-safe-undo.md
	grep -qi "revert" docs/published-history-safe-undo.md
	grep -qi "protected" docs/published-history-safe-undo.md
	grep -qi "force push" docs/published-history-safe-undo.md
	git diff --check
