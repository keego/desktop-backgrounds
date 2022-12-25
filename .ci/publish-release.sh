#!/bin/bash

set -e
set -x

git push origin release
git push origin release:master
git push origin --tags -f

echo "INFO: pushed $(git rev-parse --abbrev-ref HEAD) to origin/release"
echo "INFO: done"
