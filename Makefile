.PHONY: help status diff check

help:
	@echo "make status  Show short repository status"
	@echo "make diff    Show unstaged changes"
	@echo "make check   Run local Git checks"

status:
	git status --short

diff:
	git diff --check
	git diff --stat

check:
	git status --short
	git diff --check
