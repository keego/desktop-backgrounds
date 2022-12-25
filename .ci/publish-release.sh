#!/bin/bash

set -x

git push origin release
git push origin --tags

echo "INFO: pushed $(git rev-parse --abbrev-ref HEAD) to origin/release"
echo "INFO: done"
