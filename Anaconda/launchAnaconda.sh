#!/bin/bash

docker build -f ./Dockerfile.txt -t myanaconda .

docker run -t -d -v /$(pwd)/MyAnacondaArtifacts:/MyAnaconda -p 8888:8888 --name myanaconda myanaconda

docker exec -it myanaconda jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --port=8888

# docker system prune -a -f