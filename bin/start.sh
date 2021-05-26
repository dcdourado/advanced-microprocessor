#!/bin/bash
echo "Getting things started..."
docker run \
    --name advanced_microprocessor \
    --mount source=programs_volume,target=/app \
    advanced_microprocessor:latest

echo "Container up!"
sleep 1

echo "Executing qemu and gdb over main.s..."
docker exec advanced_microprocessor  \
    qemu -g 10101 ./prg-tst-riscv1

echo "riscv32-unknown-elf-gdb /app/main.s"
docker exec -it advanced_microprocessor |
    riscv32-unknown-elf-gdb /app/main.s