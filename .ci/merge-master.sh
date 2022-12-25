#!/bin/bash

set -e
set -x

git merge master

echo "INFO: merged master into current release branch"
echo "INFO: done"
