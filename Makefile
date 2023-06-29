install:
	poetry install

test:
	poetry run pytest

test-coverage:
	poetry run pytest --cov=gendiff --cov-report xml

lint:
	poetry run flake8 gendiff

selfcheck:
	poetry check

publish:
	poetry publish --dry-run

package-install:
	python3 -m pip install --user dist/*.whl

check: selfcheck test lint

build: check
	poetry build

.PHONY: install test lint selfcheck check build
