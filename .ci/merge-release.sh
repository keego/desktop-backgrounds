#!/bin/bash

set -x

git fetch origin release

if [[ $? -ne 0 ]]; then
  echo 'WARN: no release branch found, creating one from current changes'
  git branch release
  git push origin release
fi

git merge release

echo "INFO: merged release into current master branch"
echo "INFO: done"