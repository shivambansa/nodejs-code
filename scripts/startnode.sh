#!/bin/bash


set -x
rm -rf node-modules/ package-lock.json
npm i
npm i pm2@latest -g
/usr/bin/pm2 start
