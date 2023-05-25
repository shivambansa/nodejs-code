#!/bin/bash

set -e
cd /var/www/myapp/
/usr/bin/pm2 reload mynodeapp || /usr/bin/pm2 start
echo "Code ApplicationStart event script ran."
