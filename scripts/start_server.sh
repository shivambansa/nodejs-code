#!/bin/bash

set -e
cd /var/www/myapp/

docker image rm nodeimage:latest 2> /dev/null
docker build -t nodeimage .

docker stop nodecontainer 2> /dev/null && docker rm nodecontainer 2> /dev/null
docker run -d -p 80:3000 --name nodecontainer nodeimage:latest
echo "Code ApplicationStart event script ran."
