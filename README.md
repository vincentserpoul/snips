# snips-platform

## Create your assistant

First, create your assistant on [snips console](https://console.snips.ai)

download it, rename it assistant.zip and place it in the folder base.

## On base (no speaker, no mic)

```shell
sudo docker run --rm -dit --name mosquitto -p 1883:1883 -p 9001:9001 eclipse-mosquitto

sudo docker run --rm --name snips-base -dit --link mosquitto vincentserpoul/snips-base:v0.0.1
```

## On sat

```shell
sudo docker run --rm --name snips-sat-1 -dit --link mosquitto vincentserpoul/snips-sat:v0.0.1
```

# TODO

- [ ] Replace raspbian/stretch by balenalib/armv7hf-debian-python:3-stretch-run
- [ ] Don't use root user
- [ ] Separate skill container from platform container
