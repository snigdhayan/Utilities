#!/bin/bash

docker build -f ./Dockerfile.txt -t myjulia .

docker run -t -d -p 8888:8888 --name myjulia myjulia

# docker system prune -a -f