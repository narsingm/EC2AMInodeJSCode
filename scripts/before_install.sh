#!/bin/bash
FILE=/home/ubuntu/app/index.js
if test -f "$FILE"; then
echo "$FILE exists"
cd /home/ubuntu/app
pm2 stop --silent index.js
pm2 delete index.js
killapp -9 node
else
echo "$FILE does not exist."
fi 
cd /home/ubuntu/
sudo rm -rf app
sudo mkdir app

