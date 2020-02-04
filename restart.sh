#!/bin/sh

docker-compose down
docker-compose up -d nginx mysql workspace

