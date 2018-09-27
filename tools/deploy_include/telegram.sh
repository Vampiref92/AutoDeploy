#!/bin/bash

TELEGRAM_TOKEN="650676974:AAHkMjVDIIDGjCRAmulX2JAo6jDwy3MeP-8"
#id чата можно получить методом telegram_get_updates
TELEGRAM_CHAT="-kkkkk"
TELEGRAM_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

TELEGRAM_SOCKS5_PROXY="45.74.40.181:59311"
TELEGRAM_CMD=""

telegram_send_message(){
    message=$1;
    get_telegram_cmd "sendMessage"
    COMMAND="${TELEGRAM_CMD} -d chat_id=${TELEGRAM_CHAT}"
    ${COMMAND} --data-urlencode "text=${message}"
}

telegram_get_me(){
    get_telegram_cmd "getMe"
    ${TELEGRAM_CMD}
}

telegram_get_updates(){
    get_telegram_cmd "getUpdates"
    ${TELEGRAM_CMD}
}

get_telegram_cmd(){
    method=$1
    TELEGRAM_CMD="curl -m 30 --silent --show-error --fail -G -o /dev/null -x socks5://${TELEGRAM_SOCKS5_PROXY} ${TELEGRAM_URL}/${method}"
}