#!/bin/sh

cd ../
git clone https://github.com/taIshikawa/phpUnitTestWeb.git web
docker-compose exec workspace composer install
