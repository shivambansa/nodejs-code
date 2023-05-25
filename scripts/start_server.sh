#!/bin/bash

set -e
cd /var/www/myapp/
/usr/bin/pm2 reload mynodeapp &2>/dev/null || /usr/bin/pm2 start
echo "Code ApplicationStart event script ran."
