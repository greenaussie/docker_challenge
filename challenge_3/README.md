## Docker Challenge 3

__level 150:__

Host a static web site in a docker container. Hint - you can probably do this with very little work. Use the -v switch.

### Usage

## Build

```bash
bin/build.sh
```

Starting with a pre-made nginx container, we can make an image which has local modifications. We use a custom nginx configuration, and we create an SSL certificate within the container, which is referred to by nginx. Note `--no-cache` - if the copied files are changed, there are no smarts to detect this, so we force the rebuilding of all of our containers layers.

## Run

```bash
bin/run.sh
```

Run combines the create and build steps (see below). Here you can see there is quite a log of parameters added, to map the volume containing the static website content, and allow the port to be exposed to the user of the underlying system. Otherwise running docker containers can only communicate with other running containers on their own docker network.

## Create

```bash
bin/create.sh
```

Similar parameters to the run command, above. The container is created but not started.

## Start

Starts a stopped container. Usefully can be configured so the docker daemon will automatically start the container.
