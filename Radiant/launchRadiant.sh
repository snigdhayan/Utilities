#!/bin/bash

docker pull vnijs/radiant

docker run --name myradiant -p 8181:8181 -p 8787:8787 -d -v $(pwd)/Radiant:/home/jovyan vnijs/radiant

printf "Navigate to localhost:8181 to open Radiant and localhost:8787 to open Rstudio.\n"
