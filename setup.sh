#!/bin/sh

cd ../
mkdir data
git clone https://github.com/taIshikawa/phpUnitTestWeb.git web
docker-compose exec workspace composer install
