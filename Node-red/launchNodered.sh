#!/bin/bash

docker pull nodered/node-red

docker run -it -p 1880:1880 -v /$(pwd)/MyNodered:/data --name mynodered nodered/node-red

# docker system prune -a -f