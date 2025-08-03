PROJECT_NAME := go-dev-container-template

.PHONY: ide run

ide:
	@echo "Opening IDE..."
	devcontainer open

build:
	@echo "Building project..."
	go build .

run:
	@echo "Running server..."
	go run .
