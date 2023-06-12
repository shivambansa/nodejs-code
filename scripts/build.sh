#!/bin/sh

set -x
mkdir -p build
cp -fr index.js package-lock.json ecosystem.config.js scripts/startnode.sh build/
