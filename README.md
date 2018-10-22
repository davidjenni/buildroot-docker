# BuildRoot Docker

Docker container for [Buildroot](https://buildroot.org/) embedded system cross-compilation.

## Create docker image

Clone this repo and run:

```bash
docker build -r buildroot .
```

## Usage

run script (both as run.cmd and run.sh) is available to run buildroot commands, e.g.:

```bash
run make raspberrypi0w_defconfig menuconfig
run make
```

The run script will mount 2 local folders 'dl' and 'output' for buildroot's download cache
and the build output.

See `run make help` and [buildroot's User Guide](https://buildroot.org/downloads/manual/manual.html#_user_guide)
for other buildroot commands.
