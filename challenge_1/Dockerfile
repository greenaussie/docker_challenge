FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y update
RUN apt-get -y install pacman4console
CMD bash -c "tty && stty -F /dev/pts/8 cols 40 && stty /dev/pts/8 rows 40 && /usr/games/pacman4console"