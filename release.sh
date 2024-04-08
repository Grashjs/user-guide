#!/bin/bash

git checkout main
git branch -D docs || echo "No docs to remove"
rm -rf docs || echo "No docs to remove"

retype build && \
  git init . && \
  git remote add origin https://github.com/Grashjs/user-guide.git && \
  git checkout -b retype && \
  git add . && \
  git commit -am "Docs" && \
  git push origin retype --force 

cd docs  
rm -rf docs || echo "No docs to remove"
git checkout main
git branch -D docs || echo "No docs to remove"
