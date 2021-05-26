#!/bin/bash
docker run -it \
    --name advanced_microprocessor \
    --mount source=programs_volume, target=/app \
    advanced_microprocessor:latest