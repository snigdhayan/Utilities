#!/bin/bash

docker pull jenkins/jenkins:lts

docker run --name myjenkins -p 8080:8080 -p 50000:50000 -d -v $(pwd)/jenkins_home:/var/jenkins_home jenkins/jenkins:lts

printf "Check logs for InitialAdminPassword."

# cat $(pwd)/jenkins_home/secrets/initialAdminPassword

# docker system prune -a -f