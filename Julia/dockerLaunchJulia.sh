#!/bin/bash

docker build -f ./Dockerfile.txt -t myjulia .

docker run -t -d -p 8888:8888 --name myjulia myjulia

# docker exec -it myludwig jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --port=8888

# docker system prune -a -f