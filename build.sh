#!/bin/bash

#proxy="--build-arg https_proxy=http://homevm:3128"
# check VERSION
tag=happyman/docker-twmap-cli:`cat VERSION`
docker build $proxy -t $tag -t happyman/docker-twmap-cli:latest .

# docker push 
echo docker push $tag
echo docker push happyman/docker-twmap-cli:latest
