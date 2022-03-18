#!/usr/bin/env bash
# Usage: ./get_db_data.sh <branch>
while IFS= read -r line; do
  REPO_NAME=$line
  git clone -b $1 https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
done < ./repo-list.txt

