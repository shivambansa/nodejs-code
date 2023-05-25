#!/bin/bash

set -e
cd /var/www/myapp/
/usr/bin/pm2 ls
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s
echo "Code ValidateService event script ran."
