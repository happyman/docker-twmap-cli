#!/bin/bash

IMAGE=happyman/docker-twmap-cli:latest

exec docker run --rm -it -v "$PWD":/workdir -v /tmp:/tmp --user="$(id -u):$(id -g)" $IMAGE /usr/bin/php /twmap/twmap_gen/cmd_make2.php -O /workdir $@

