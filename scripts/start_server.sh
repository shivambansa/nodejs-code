#!/bin/bash

set -e
cd /var/www/myapp/
docker run -d -p 80:3000 --name nodecontainer nodeapp:latest
echo "Code ApplicationStart event script ran."
