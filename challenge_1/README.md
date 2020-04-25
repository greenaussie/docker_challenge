# Docker Challenge 1

If you pick a curses game, this turns out to be more challenging than level 100!

__level 100:__

Pick a Linux command line game (e.g. [from this list](https://linoxide.com/linux-how-to/linux-command-line-games/) and deploy it in a docker container. Hint - it need an interactive terminal! Share your code in your private GitHub repo.

## Build image

```bash
bin/build.sh
```

## Run the container

The `docker run ..` command creates and runs the container from the image for a one time execution, which is what we want for a command (rather than a service). We have to tell docker the dimensions of the tty. Within the running container, docker is in fact talking to a pseudo tty device, `/dev/pts/0`.

```bash
docker run --rm -it docker_challenge_1 bash -c "stty cols 40 && stty rows 40 && /usr/games/pacman4console"
```

> If we wanted the task to be running so we could later connect to it (`docker start ...`), this would be more complex - within our container, we would need to create a pts of a certain dimension, and run our task within that pts. We could use tmux to start a server, and create a session within it, and then we could use `docker exec ...` to start a new process on the running container (similar to the run command above).
