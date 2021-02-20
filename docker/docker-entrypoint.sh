#!/bin/bash
set -e

echo -e "======================Starting control panel========================\n"
  pm2 start ./index.js
  echo -e "Panel started\n"
  echo -e "http://<ip>:5566\n"

echo -e "\nDocker started success\n"

if [ "${1#-}" != "${1}" ] || [ -z "$(command -v "${1}")" ]; then
  set -- node "$@"
fi

exec "$@"