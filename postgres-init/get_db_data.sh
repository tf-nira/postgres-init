#!/usr/bin/env bash

mkdir -p ./repos

while IFS= read -r line; do
  REPO_NAME=$line
  git clone https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
done < ./repo-list.txt

