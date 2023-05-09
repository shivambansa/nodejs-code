#!/bin/bash


set -x

sudo /usr/bin/pm2 reload index.js 2> /dev/null || sudo /usr/bin/pm2 start index.js 
