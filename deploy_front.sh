#!/bin/bash

echo "---------------------- DEPLOYING FRONTEND ------------------------------"

git -C /root/O-City pull

docker build -t ocity_front --no-cache /root/O-City

docker compose -f /opt/compose/ocity/docker-compose.yml up -d ocity_front
