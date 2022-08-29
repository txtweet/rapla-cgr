#!/bin/sh

if [ "$1" = "build" ]; then
    echo "Build en cours :"
    docker build -t "rapla_tomcat" ./rapla_tomcat
elif [ "$1" = "run" ]; then
    echo "RUN : "
    docker-compose up -d
else
    echo "build : construit les images"

fi