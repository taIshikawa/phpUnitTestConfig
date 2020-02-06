#!/bin/sh

cd ../
mkdir data
git clone https://github.com/taIshikawa/phpUnitTestWeb.git web
# composeインスコ
docker-compose exec workspace composer install
# テストDB作成
#docker-compose exec mysql mysql -u root -proot -e"grant create on *.* to 'default'@'%'"
docker-compose exec mysql mysql -u root -proot -e"grant all on *.* to 'default'@'%'"
docker-compose exec mysql mysql -u default -psecret -e'create database testing;'
#権限確認
docker-compose exec mysql mysql -u root -proot -e"SHOW GRANTS for 'default'@'%';"
