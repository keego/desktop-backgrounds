#!/bin/bash

set -x

git merge master &> /dev/null

echo "INFO: merged master into current release branch"
echo "INFO: done"
