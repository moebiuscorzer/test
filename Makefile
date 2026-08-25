.PHONY: verify-fast verify dev

verify-fast:
	@test -f README.md
	@if test -f validation.txt; then grep -Fx 'sandbox lifecycle validated' validation.txt; fi

verify: verify-fast
	@git diff --check

dev:
	@echo "No development server is required for this sandbox fixture."
