#!/bin/bash

set -x

echo
git status

echo
git log --decorate --abbrev-commit --pretty=oneline -10

echo
git diff HEAD~ HEAD
