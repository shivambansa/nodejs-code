#!/bin/bash


set -x

[[ sudo /usr/bin/pm2 reload index.js ]] || [[ sudo /usr/bin/pm2 start index.js ]]
