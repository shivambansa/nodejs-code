#!/bin/bash

set -e
cd /var/www/myapp/
/usr/bin/pm2 ls
echo "Code ValidateService event script ran."
