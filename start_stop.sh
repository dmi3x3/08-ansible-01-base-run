#!/usr/bin/env bash
docker run --name centos7 -d pycontribs/centos:7 /bin/bash -c "while :; do echo 'Press <CTRL+C> to exit.'; sleep 1; done"
docker run --name ubuntu -d pycontribs/ubuntu /bin/bash -c "while :; do echo 'Press <CTRL+C> to exit.'; sleep 1; done"


#docker stop centos7
#docker stop ubuntu
