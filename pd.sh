#!/bin/bash

case $1 in
    "up")
    docker run -itd -v `pwd`/html:/usr/share/nginx/html --name pd-web -p 81:80 nginx:1.13
    ;;
    "down")
    docker rm -f pd-web
    ;;
    "push")
    git add -A
    git commit -m update
    git push origin master
    ;;
esac
