PROJECT_NAME := python-dev-container-template

.PHONY: ide setup run

ide:
	@echo "Opening IDE..."
	devcontainer open

setup: pyproject.toml
	@echo "Installing dependencies..."
	uv sync --all-groups

run: setup
	@echo "Running the FastAPI server..."
	uv run uvicorn main:app --host 0.0.0.0 --reload --port 8080
