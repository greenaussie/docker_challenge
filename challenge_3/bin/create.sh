#!/bin/bash

docker create --name docker_challenge_3_container -v "$(pwd)/src/html:/var/www/html"  -p 443:443 docker_challenge_3:latest