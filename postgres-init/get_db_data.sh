#!/usr/bin/env bash

while IFS= read -r line; do
  REPO_NAME=$line
  if [ $REPO_NAME == "admin-services" ]; then
  git clone -b develop https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
  else
  git clone -b $1 https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
  fi
done < ./repo-list.txt

