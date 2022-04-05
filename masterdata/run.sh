#!/bin/sh

docker run -d --rm --name masterdata -e branch=develop -e DB_HOST=api-internal.soil.mosip.net -e DB_PWD=49RwYVRIvR  mosipdev/masterdata-load:develop
