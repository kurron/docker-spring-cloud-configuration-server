#!/bin/bash

CMD="docker run \
       --rm \
       --name configuration-server \
       --net "host" \
       --env SPRING_CLOUD_CONSUL_HOST=192.168.1.227 \
       kurron/spring-configuration-server:1.0.4"

echo eval $CMD
eval $CMD $*
