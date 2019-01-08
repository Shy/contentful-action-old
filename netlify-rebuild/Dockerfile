FROM node:10-slim

LABEL "com.github.actions.name"="Netlify Rebuild"
LABEL "com.github.actions.description"="Calls webhook to trigger rebuild on netlify"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/Shy/contentful-action"
LABEL "homepage"="http://github.com/shy/contentful-action"
LABEL "maintainer"="Shy <shy@contentful.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
