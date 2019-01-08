#!/bin/sh
set -e

if [ -z "$spaceId" ];
then
    echo "\$spaceId is not set." >&2
    exit 1
fi

if [ -z "$accessToken" ];
then
    echo "\$accessToken is not set." >&2
    exit 1
fi

echo "Initiating Migrations"

node migrate $spaceId $GITHUB_REF $accessToken
