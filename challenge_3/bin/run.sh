#!/bin/bash

docker run --name testtest -v "$(pwd)/src/html:/var/www/html"  -p 443:443 -it --rm docker_challenge_3:latest