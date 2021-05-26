#!/bin/bash
docker build --pull -f "Dockerfile" -t advanced_microprocessor:latest .

docker run \
    --name advanced_microprocessor \
    --mount source=programs_volume,target=/app \
    advanced_microprocessor:latest