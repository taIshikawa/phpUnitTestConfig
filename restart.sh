#!/bin/sh

docker-compose down
docker-compose up -d nginx mysql adminer workspace
