#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
MYSQL_CONTAINER_NAME="mysql"
PATH_TO_BACKUP="/home/frolov/bitrixFiles/toplivnye-karty/bitrix.sql"

. ./.env

#стартуем докер
cat ${PATH_TO_BACKUP} | docker exec -i ${MYSQL_CONTAINER_NAME} mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE}
