#!/bin/sh
case "$1" in
    start)
        nohup sudo docker-compose up &
    ;;
    stop)
        docker sudo docker-compose down
    ;;
    login)
        docker exec -it $Container /bin/bash
    ;;
    info)
        docker ps -a -f name=$Container
    ;;
    port)
        docker port $Container
    ;;
    *)
        echo "Usage: build|run|init[chmod,conf]|start|stop|remove|login|info|port"
        exit 3
    ;;
esac