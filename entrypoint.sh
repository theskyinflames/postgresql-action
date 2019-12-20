#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -e POSTGRES_DBNAME=$INPUT_POSTGRESQL_DB"
docker_run="$docker_run -e POSTGRES_USER=$INPUT_POSTGRESQL_USER"
docker_run="$docker_run -e POSTGRES_PASS=$INPUT_POSTGRESQL_PASSWORD"
docker_run="$docker_run -e POSTGRES_MULTIPLE_EXTENSIONS=postgis"
docker_run="$docker_run -d -p 5432:5432 kartoza/postgis:$INPUT_POSTGRESQL_VERSION"

echo $docker_run

sh -c "$docker_run"
