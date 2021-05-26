#!/bin/bash
echo "Executing qemu and gdb over main.s..."
docker run \
    --name advanced_microprocessor \
    --mount source=programs_volume,target=/app \
    advanced_microprocessor:latest

docker exec advanced_microprocessor  \
    qemu -g 10101 ./prg-tst-riscv1

docker exec -it advanced_microprocessor |
    riscv32-unknown-elf-gdb /app/main.s