#!/bin/bash

set -e
cd /var/www/myapp/

docker build -t nodeimage .
docker run -d -p 80:3000 --name nodecontainer nodeimage:latest
echo "Code ApplicationStart event script ran."
