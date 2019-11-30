#!/bin/sh

VER="5.2.0.3"

sudo docker rmi hhyq/nso-test:$VER
sudo docker build --build-arg NSOVER=$VER -t hhyq/nso-test:$VER .
sudo docker push hhyq/nso-test:$VER
