#!bin/bash

docker pull anand58/spring-boot-aws:latest
docker stop spring-boot-aws
docker system prune -f
docker run -d --name=spring-boot-aws anand58/spring-boot-aws:latest