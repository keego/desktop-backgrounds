#!/bin/bash

set -x

npm version patch &> /dev/null

git reset HEAD~ &> /dev/null

PKG_VERSION=`npx -c 'node -p "process.env.npm_package_version"'`

echo "INFO: bumping to v$PKG_VERSION"

git add -A &> /dev/null
git commit -m "v$PKG_VERSION" &> /dev/null
git tag -f "v$PKG_VERSION" &> /dev/null

echo "INFO: done"
