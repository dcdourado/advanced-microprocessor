#!/bin/bash
echo "Getting things started..."
docker start advanced_microprocessor

echo "Container up!"
sleep 1

echo "Assemblying..."
docker exec advanced_microprocessor \
    riscv32-unknown-elf-as -gstabs -o main.o main.s -a=main.lst

echo "Linking..."
docker exec advanced_microprocessor \
    riscv32-unknown-elf-ld -g -o main main.o

echo "Executing qemu and gdb over main.s..."
docker exec advanced_microprocessor  \
    qemu-riscv32 -g 10101 ./main

echo "gdb main.s"
docker exec -it advanced_microprocessor |
    riscv32-unknown-elf-gdb /app/main.s