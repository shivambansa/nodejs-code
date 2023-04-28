#!/bin/bash

set -e
cd /home/ubuntu/myapp/
/usr/bin/pm2 start
echo "Code ApplicationStart event script ran."
