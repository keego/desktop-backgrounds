#!/bin/bash

set -e
set -x

npm version patch --no-git-tag-version

NEW_VERSION=v`npx -c 'node -p "process.env.npm_package_version"'`

echo "INFO: bumping to $NEW_VERSION"

git add -A
git commit -m "$NEW_VERSION"
git tag -f "$NEW_VERSION"

echo "INFO: done"
