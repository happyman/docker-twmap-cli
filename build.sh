#!/bin/bash

# check VERSION
tag=happyman/docker-twmap-cli:`cat VERSION`
docker build -t $tag -t happyman/docker-twmap-cli:latest .

# docker push 
echo docker push $tag
echo docker push happyman/docker-twmap-cli:latest
