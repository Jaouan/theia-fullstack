#!/bin/bash

bash -e /root/run-dind.sh

echo "[theia] Configuring NodeJS..."
. /root/.nvm/nvm.sh
cd /opt/theia
nvm install
nvm use
echo "[theia] Launching Theia..."
yarn start /root/workspace --hostname 0.0.0.0 --port 8500
