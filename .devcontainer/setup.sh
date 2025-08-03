#!/bin/bash
set -e

cd /workspaces/dev-container-templates || {
    echo "❌ Failed to navigate to /workspaces/dev-container-templates"
    exit 1
}
if ! go mod download; then
    echo "❌ go mod download failed. Retrying with verbose output..."
    go mod download -x
fi

if ! go mod tidy; then
    echo "❌ go mod tidy failed. Retrying with verbose output..."
    go mod tidy -v
fi
echo "✅ go mod download and tidy completed successfully."
