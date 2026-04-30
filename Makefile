.PHONY: help status diff history check

help:
	@echo "make status   Show short repository status"
	@echo "make diff     Show local diff checks"
	@echo "make history  Show recent commits"
	@echo "make check    Run basic Git checks"

status:
	git status --short

diff:
	git diff --check
	git diff --stat

history:
	git log --oneline --decorate -5

check:
	git status --short
	git diff --check
	test -f notes/history-for-review.md
