#!/bin/sh
set -e

if [ -z "$netlifyBuildHook" ];
then
    echo "\$netlifyBuildHook is not set." >&2
    exit 1
fi

if test "$GITHUB_REF" = 'refs/heads/master'; then
    sh -c "echo 'Triggering rebuild on Netlify via webhook.'"
    sh -c "curl -X POST -d {} $netlifyBuildHook"
else
    sh -c "echo 'Branch Deploy. Skipping rebuild.'"
fi
