.PHONY: help status log diff check

help:
	@echo "make status  Show short repository status"
	@echo "make log     Show recent history"
	@echo "make diff    Show unstaged changes"
	@echo "make check   Run basic Git checks"

status:
	git status --short

log:
	git log --oneline --decorate -5

diff:
	git diff --check
	git diff --stat

check:
	git status --short
	git diff --check
