#!/bin/bash

set -e
apt update -y
mkdir -p /var/www/myapp
cd /var/www/myapp
rm -rf *
docker build -t nodeimage .
echo "Code BeforeInstall event script ran."
