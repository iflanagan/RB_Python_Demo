#!/bin/bash

if [ $# -eq 1 ]; then
    ENV=$1
else
    echo "Usage: sh push-and-deploy.sh [environment]"
    exit 1
fi

git push

REV=$(git rev-parse HEAD)

DATA='{"access_token":"73b6dcd6e3bc4782b55b4be23d1b9fa0","environment":"'$ENV'","revision":"'$REV'","rollbar_username":"ianianf","local_username":"ianianf"}'

curl \
    --request POST \
    --url https://api.rollbar.com/api/1/deploy/ \
    --header 'content-type: application/json' \
    --data $DATA

echo
echo
echo "."
echo "."
echo "Deployed to $ENV"
echo
echo "Latest Git SHA: $REV"
