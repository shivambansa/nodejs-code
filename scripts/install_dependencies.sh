#!/bin/bash

set -e
apt update -y
mkdir -p /var/www/myapp
cd /var/www/myapp
rm -rf *
echo "Code BeforeInstall event script ran."
