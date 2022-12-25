#!/bin/bash

set -x

git push origin release

echo "INFO: pushed $(git rev-parse --abbrev-ref HEAD) to origin/release"
echo "INFO: done"
