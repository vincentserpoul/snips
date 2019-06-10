# snips-platform

container for snips platform only (no sound or device)

## On main

```shell
sudo docker run -dit --name mosquitto -p 1883:1883 -p 9001:9001 eclipse-mosquitto

sudo docker run --rm --name snips -dit --link mosquitto vincentserpoul/snips-platform:v0.0.1
```

## On sat
