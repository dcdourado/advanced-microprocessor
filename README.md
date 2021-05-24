# Advanced Microprocessor

This Dockerfilecontains exactly the same instructions required by `Linux ARM GNU Toolchain Tutorial` to get really learning Assembly (step __3.b.2__ and forward).

## Requirements

- [Docker](https://docs.docker.com/engine/install/ubuntu/) (I'm using 20.10.6)

## Setup

Run
```bash
git clone https://github.com/dcdourado/advanced-microprocessor
cd advanced-microprocessor
docker build --pull --rm -f "Dockerfile" -t advanced_microprocessor:latest .
```
