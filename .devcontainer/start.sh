#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="/tmp/jupyter.log"

nohup uv run jupyter lab \
    --ip=0.0.0.0 \
    --port=8888 \
    --no-browser \
    --NotebookApp.token='' \
    --NotebookApp.password='' \
    > "$LOG_FILE" 2>&1 &

PID=$!
echo "[$(date)] Jupyter Lab started with PID $PID" | tee -a "$LOG_FILE"
