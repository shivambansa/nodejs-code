#!/bin/bash

set -e
cd /var/www/myapp/
docker ps -q
echo "Code ValidateService event script ran."
