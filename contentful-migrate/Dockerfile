FROM node:10-slim

LABEL "com.github.actions.name"="Contentful Migration"
LABEL "com.github.actions.description"="Run Migration against Contentful"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/Shy/contentful-action"
LABEL "homepage"="http://github.com/shy/contentful-action"
LABEL "maintainer"="Shy <shy@contentful.com>"

COPY . .

RUN npm install

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

RUN npm run-script migrate $spaceId $GITHUB_REF $accessToken "${GITHUB_WORKSPACE}/${contentfulMigrationLocation}"
