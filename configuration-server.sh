#!/bin/bash

# This needs to be customized for each machine
CMD="docker run \
       --detach \
       --restart always \
       --name configuration-server \
       --net "host" \
       --env SPRING_CLOUD_CONSUL_HOST=192.168.1.227 \
       --env JVM_HEAP_MIN=128m \
       --env JVM_HEAP_MAX=128m \
       --env JVM_JMX_HOST=10.0.2.15 \
       --env JVM_JMX_PORT=2020 \
       --env JVM_JMX_RMI_PORT=2020 \
       kurron/docker-spring-cloud-configuration-server:1.4.0"

echo eval $CMD
eval $CMD $*
