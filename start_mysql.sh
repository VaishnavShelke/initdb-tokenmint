#!/bin/bash

docker stop tokenmint-mysql >/dev/null 2>&1
docker rm tokenmint-mysql >/dev/null 2>&1
docker run -d \
    --name tokenmint-mysql \
    -e MYSQL_ROOT_PASSWORD=root \
    -p 3306:3306 \
    mysql:8.0 >/dev/null 2>&1
docker network connect tokenmint-ecosystem tokenmint-mysql >/dev/null 2>&1

# Wait for MySQL to be ready
echo "Waiting for MySQL to be ready..."
sleep 10

# Run the SQL initialization script
./run_all_sql.sh 