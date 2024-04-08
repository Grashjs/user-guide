#!/bin/bash

REPO=https://github.com/Grashjs/user-guide.git
DIR=$(pwd)

git checkout main
git branch -D docs || echo "No docs to remove"
rm -rf docs || echo "No docs to remove"

retype build && \
  cd docs && \
  git init . && \
  git remote add origin $REPO && \
  git checkout -b docs && \
  git add . && \
  git commit -am "Docs" && \
  git push origin docs --force 

cd $DIR  
rm -rf docs || echo "No docs to remove"
git checkout main
git branch -D docs || echo "No docs to remove"
