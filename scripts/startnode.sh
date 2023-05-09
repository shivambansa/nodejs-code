#!/bin/bash


set -x
exists=$(sudo ls /usr/bin/ | grep -E ^pm2$)
[[ exists == "pm2"  ]] || sudo npm i pm2@latest -g
sudo /usr/bin/pm2 reload index.js
