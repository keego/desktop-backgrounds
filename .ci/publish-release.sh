#!/bin/bash

set -e
set -x

git push origin master

echo "INFO: pushed $(git describe --tags) to master"

git checkout release

git merge master

git push origin release

echo "INFO: merged $(git rev-parse --abbrev-ref HEAD) into origin/release"

git push origin --tags -f

echo "INFO: pushed $(git describe --tags) tag"

echo "INFO: done"
