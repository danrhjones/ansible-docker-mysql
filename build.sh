#!/bin/bash

ssh-keygen -q -t rsa -N '' -f ./id_rsa <<<y 2>&1 >/dev/null
docker build -t docker-ansible .
 docker build -t docker-target .
# docker run --rm -it docker-ansible ansible --version
docker run -itd -p 2026:22  docker-target --hostname controller
docker run -itd -p 2027:22 -p 5001:5000 docker-ansible --hostname target
