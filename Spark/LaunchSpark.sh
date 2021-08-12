#!/bin/bash

# Docker build and run

docker build -f ./Dockerfile.txt -t myspark .

docker run -d -v $(pwd)/MySpark:/MySpark -p 8888:8888 -e ACCEPT_EULA=yes myspark

printf "Navigate to localhost:8888 to open Jupyter Notebook.\n"

# docker system prune -a -f