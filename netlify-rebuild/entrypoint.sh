#!/bin/sh
set -e

if test "$GITHUB_REF" = 'refs/heads/master'; then
    sh -c "echo 'Triggering rebuild on Netlify via webhook.'"
    sh -c "curl -X POST -d {} $netlifyBuildHook"
else
    sh -c "echo 'Branch Deploy. Skipping rebuild.'"
fi
