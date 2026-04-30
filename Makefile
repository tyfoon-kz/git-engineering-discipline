.PHONY: help status diff check

help:
	@echo "make status  Show short repository status"
	@echo "make diff    Show local diff checks"
	@echo "make check   Run basic Git checks"

status:
	git status --short

diff:
	git diff --check
	git diff --stat

check:
	git status --short
	git diff --check
	test -f notes/atomic-commit.md
