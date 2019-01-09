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


if [[ -z $contentfulMigrationLocation ]];
then
    echo "Location for folder containing migration files required. Provide value in contentfulMigrationLocation variable" >&2
    exit 1
fi

if [[ ! -d "$contentfulMigrationLocation" &&  ! -f "$contentfulMigrationLocation" ]];
then
    echo "Folder location '$contentfulMigrationLocation' does not exist."
    exit 1
fi

echo "Initiating Migrations"

node contentful-migrate/migrate
