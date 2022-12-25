#!/bin/bash

set -e
set -x

npm version patch

git reset HEAD~

PKG_VERSION=`npx -c 'node -p "process.env.npm_package_version"'`

echo "INFO: bumping to v$PKG_VERSION"

git add -A
git commit -m "v$PKG_VERSION"
git tag -f "v$PKG_VERSION"

echo "INFO: done"
