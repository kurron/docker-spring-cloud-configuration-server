#!/bin/bash

if [ "$1" = "" ]
then
 echo "Usage: $0 tag"
 exit
fi

TAG=$1

TAG_COMMAND="docker tag configuration-server:compose kurron/docker-spring-cloud-configuration-server:$TAG"
echo $TAG_COMMAND
$TAG_COMMAND

PUSH_COMMAND="docker push kurron/docker-spring-cloud-configuration-server:$TAG"
echo $PUSH_COMMAND
$PUSH_COMMAND
