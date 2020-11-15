#!/bin/sh

VER="7.2.2"

#docker rmi h-net.cloudns.asia:15000/wae-base:$VER
#docker rmi h-net.cloudns.asia:15000/wae-base:latest
docker build --build-arg WAEVER=$VER -t h-net.cloudns.asia:15000/wae-base:latest .
docker tag h-net.cloudns.asia:15000/wae-base:latest h-net.cloudns.asia:15000/wae-base:$VER
#docker push h-net.cloudns.asia:15000/wae-base:$VER
#docker push h-net.cloudns.asia:15000/wae-base:latest
