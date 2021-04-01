#!/bin/bash

IMAGE=happyman/docker-twmap-cli

exec docker run --rm -it -v "$PWD":/workdir --user="$(id -u):$(id -g)" $IMAGE /usr/bin/php /twmap/twmap_gen/cmd_make2.php -O /workdir $@

