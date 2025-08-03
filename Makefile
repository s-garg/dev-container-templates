PROJECT_NAME := go-dev-container-template

.PHONY: ide run

ide:
	@echo "Opening IDE..."
	devcontainer open

run:
	@echo "Running server..."
	go run main.go
