#!/bin/bash

set -x

git fetch origin release

if [[ $? -eq 0 ]]; then
  git checkout release
else
  echo 'WARN: no release branch found, creating one from current changes'
  # git checkout master
  git checkout -b release
fi

echo 'INFO: release branch checked out'
echo 'INFO: done'
