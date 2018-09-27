#!/bin/bash

function backup_mysql(){
	DB_NAME=$1
	DB_USER=$2
	DB_PASSWORD=$3
	BACKUP_NAME=getNeedValue $4 "bitrix"
	mysqldump -u ${DB_USER} -p${DB_PASSWORD} ${DB_NAME} > ${BACKUP_NAME}.sql
}

function backup_mysql_gz(){
	DB_NAME=$1
	DB_USER=$2
	DB_PASSWORD=$3
	BACKUP_NAME=getNeedValue $4 "bitrix"
	mysqldump -u ${DB_USER} -p${DB_PASSWORD} ${DB_NAME} | gzip  > ${BACKUP_NAME}.sql.gz
}


function restore_mysql(){
	DB_NAME=$1
	DB_USER=$2
	DB_PASSWORD=$3
	BACKUP_NAME=getNeedValue $4 "bitrix"
	mysql -u${DB_USER} -p${DB_PASSWORD} ${DB_NAME} -P 3306 < ${BACKUP_NAME}.sql
}

function restore_mysql_gz(){
	DB_NAME=$1
	DB_USER=$2
	DB_PASSWORD=$3
	BACKUP_NAME=getNeedValue $4 "bitrix"
	gunzip < ${BACKUP_NAME}.sql.gz | mysql -u ${DB_USER} -p${DB_PASSWORD} ${DB_NAME}
}

function getNeedValue(){
    CHECK_VALUE=$1
    DEFAULT_VALUE=$2
    if [[ -n $CHECK_VALUE ]]; then 
        echo $CHECK_VALUE 
    else 
        echo $DEFAULT_VALUE 
    fi
}
