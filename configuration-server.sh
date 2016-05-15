#!/bin/bash

# This needs to be customized for each machine
CMD="docker run \
       --detach \
       --restart always \
       --name configuration-server \
       --net "host" \
       --env SPRING_CLOUD_CONSUL_HOST=192.168.1.227 \
       --env JVM_JMX_HOST=192.168.1.227 \
       --env JVM_JMX_PORT=1999 \
       kurron/docker-spring-cloud-configuration-server:1.1.0"

echo eval $CMD
eval $CMD $*
