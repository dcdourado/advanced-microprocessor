# Advanced Microprocessor

This Dockerfilecontains exactly the same instructions required by `Linux RISC-V GNU Toolchain Tutorial` to get to the part where you really start learning Assembly (step __3.b.2__ and forward).

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

# You can run it after pulling this repo again to get updates. This command pulls ubuntu docker image, and does some dependencies installing.
./bin/build.sh
```

## Using

For the sake of testability, we've already have inside the container the assembly program [main.s](main.s), so let's check it out

```bash
# First time will take some time... So go stretch your legs
./bin/start.sh 
```

Notes:

- You don't even have to start the qemu, since our [config.sh script](config.sh) already does that.
- This thing persists as long as you don't explicitly exclude it from your storage (`--rm`) 