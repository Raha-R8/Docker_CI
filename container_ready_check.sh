#!/bin/bash

CONTAINER_NAME="llm-inference-compose-container"

echo "Waiting for the container to be ready..."

while true; do
    # Capture the output of docker logs
    answer=$(docker logs $CONTAINER_NAME 2>&1)

    # Check if there's any output from the logs (or check for specific log entries you want)
    if [[ -n "$answer" ]]; then
        echo "✅ Container is ready!"
        break
    else
        echo "⏳ Container is not ready yet..."
        sleep 5
    fi
done
