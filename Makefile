PYTHON := uv run python3
CONFIG := config.json
EXCLUDE := .venv
MYPY_FLAGS := --warn-return-any --warn-unused-ignores --ignore-missing-imports \
	--disallow-untyped-defs --check-untyped-defs --exclude $(EXCLUDE)

.PHONY: install run debug clean lint lint-strict

install:
	uv sync

run:
	$(PYTHON) pac-man.py $(CONFIG)

debug:
	$(PYTHON) -m pdb pac-man.py $(CONFIG)

clean:
	find . -type d -name __pycache__ -not -path './.venv/*' -exec rm -rf {} +
	rm -rf .mypy_cache .pytest_cache build dist *.egg-info

lint:
	uv run flake8 . --exclude $(EXCLUDE)
	uv run mypy . $(MYPY_FLAGS)

lint-strict:
	uv run flake8 . --exclude $(EXCLUDE)
	uv run mypy . --strict --exclude $(EXCLUDE)
