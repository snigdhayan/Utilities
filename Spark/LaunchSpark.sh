#!/bin/bash

# Docker build and run

docker build -f .\Dockerfile.txt -t myspark .

docker run -it -p 8888:8888 -e ACCEPT_EULA=yes myspark

# Navigate to localhost:8888 to open Jupyter Notebook.
