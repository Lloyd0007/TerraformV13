#!/bin/bash

# Docker installation

yum install -y docker

systemctl start docker

systemctl enable docker

docker run --name eureka-server -h eureka-server.cloudgeeks.ca.local  -p 80:8761 --restart unless-stopped -id quickbooks2018/eureka-server:latest


#END
