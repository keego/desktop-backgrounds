#!/bin/bash

git fetch $GITHUB_WORKSPACE release &> /dev/null

if [[ $? -eq 0 ]]; then
  git checkout release 1> /dev/null
else
  echo 'WARN: no release branch found, creating one from current changes'
  # git checkout master &> /dev/null
  git checkout -b release &> /dev/null
fi

echo 'INFO: release branch checked out'
echo 'INFO: done'
