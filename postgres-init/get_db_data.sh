#!/usr/bin/env bash

while IFS= read -r line; do
REPO_NAME=$line
if  (( $REPO_NAME == "resident-services" )); then
git clone -b 1.2.0.1-B2 https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
elif (( $REPO_NAME == "mosip-compliance-toolkit" )); then
git clone -b v0.0.9 https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
elif (( $REPO_NAME == "digital-card-service" )); then
git clone -b develop https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
elif (( $REPO_NAME == "idp" )); then
git clone -b develop https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
else
git clone -b $1 https://github.com/mosip/$REPO_NAME.git ./repos/$REPO_NAME
fi
done < ./repo-list.txt

