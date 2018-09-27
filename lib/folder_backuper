#!/bin/bash

function bitrix_folder_backup(){
    NAME=getNeedValue $1 "bitrix"
    NEED_FOLDER=getNeedValue $2 "./"
    cd ${NEED_FOLDER}
    tar --exclude "./bitrix/tmp/*" --exclude "./bitrix/cache/*" --exclude "./bitrix/managed_cache/*" --exclude "./bitrix/stack_cache/*" --exclude "./bitrix/html/*"  --exclude "*.tar" --exclude "*.gz" --exclude "*.sql" -czf ./${NAME}.tar.gz ./bitrix
}

function upload_folder_backup(){
    NAME=getNeedValue $1 "upload"
    NEED_FOLDER=getNeedValue $2 "./"
    cd ${NEED_FOLDER}
    tar --exclude "./upload/tmp/*" --exclude "./upload/resize_cache/*" --exclude "*.tar" --exclude "*.gz" --exclude "*.sql" -czf ./upload.tar.gz ./upload
}

function full_folder_backup(){
    NAME=getNeedValue $1 "site"
    NEED_FOLDER=getNeedValue $2 "./"
    cd ${NEED_FOLDER}
    tar --exclude "./bitrix/tmp/*" --exclude "./bitrix/cache/*" --exclude "./bitrix/managed_cache/*" --exclude "./bitrix/stack_cache/*" --exclude "./bitrix/html/*"  --exclude "./upload/tmp/*" --exclude "./upload/resize_cache/*" --exclude "*.tar" --exclude "*.gz" --exclude "*.sql" -czf ./site.tar.gz ./
}

function full_without_upload_folder_backup(){
    NAME=getNeedValue $1 "site_without_upload"
    NEED_FOLDER=getNeedValue $2 "./"
    cd ${NEED_FOLDER}
    tar --exclude "./bitrix/tmp/*" --exclude "./bitrix/cache/*" --exclude "./bitrix/managed_cache/*" --exclude "./bitrix/stack_cache/*" --exclude "./bitrix/html/*"  --exclude "./upload/*" --exclude "*.tar" --exclude "*.gz" --exclude "*.sql" -czf ./site_without_upload.tar.gz ./
}

function full_without_bitrix_upload_folder_backup(){
    NAME=getNeedValue $1 "site_without_bitrix_upload"
    NEED_FOLDER=getNeedValue $2 "./"
    cd ${NEED_FOLDER}
    tar --exclude "./bitrix/*" --exclude "./upload/*" --exclude "*.tar" --exclude "*.gz" --exclude "*.sql" -czf ./site_without_bitrix_upload.tar.gz ./
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
