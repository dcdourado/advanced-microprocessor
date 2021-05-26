#!/bin/bash
docker build --no-cache --pull -f "Dockerfile" -t advanced_microprocessor:latest .

docker create --rm  --name advanced_microprocessor --mount source=programs_volume,target=/app advanced_microprocessor:latest

docker run advanced_microprocessor