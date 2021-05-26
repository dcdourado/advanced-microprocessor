# Advanced Microprocessor

This Dockerfilecontains exactly the same instructions required by `Linux ARM GNU Toolchain Tutorial` to get to the part where you really start learning Assembly (step __3.b.2__ and forward).

## Requirements

- [Docker](https://docs.docker.com/engine/install/ubuntu/) (I'm using 20.10.6)

## Setup

We have to give execute permission to these files, so you should check it out, simple bash.
```bash
git clone https://github.com/dcdourado/advanced-microprocessor
cd advanced-microprocessor

chmod +x bin/volume.sh
chmod +x bin/build.sh
chmod +x bin/start.sh

# Just the first time! So we can "transfer" code written here to the container
./bin/volume.sh

# You can run it after pulling this repo again to get updates. You also should know that this command might take some hours, since it downloads ubuntu docker image, and does all the required installation and configs. I'm not sure if running it again will screw things up.
./bin/build.sh

# Get things running. You should use this command every time you want to code some riscv assembly.
./bin/start.sh 
```

## Using

For the sake of testability, we've already have inside the container the assembly program [prg-tst-riscv1.s](prg-tst-riscv1.s), so let's check it out

```


# Now you are connect to the container

cd /app

riscv32-unknown-elf-as -gstabs -o prg-tst-riscv1.o prg-tstriscv1.s -a=prg-tst-riscv1.lst
riscv32-unknown-elf-ld -g -o prg-tst-riscv1 prg-tst-riscv1.o
```

Notes:

- You don't even have to start the qemu, since our [config.sh script](config.sh) already does that.
- This thing persists as long as you don't explicitly exclude it from your storage (`--rm`) 