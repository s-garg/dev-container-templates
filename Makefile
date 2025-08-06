PROJECT_NAME := docker-compose-dev-container-template

.PHONY: ide setup run

ide:
	@echo "Opening IDE..."
	devcontainer open

build: pyproject.toml
	@echo "Installing dependencies..."
	uv sync --all-groups

run: build
	@echo "Running the FastAPI server..."
	DATABASE_URL=postgresql+psycopg2://dev:dev@db:5432/devdb \
	CACHE_URL=redis://redis:6379/0 \
	uv run uvicorn main:app --host 0.0.0.0 --reload --port 8080
