#!/bin/sh

curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
heroku plugins:install heroku-container-registry
heroku container:login
docker login --username=_ --password=$HEROKU_API_KEY registry.heroku.com
heroku container:push web --app $HEROKU_APP_NAME
heroku container:release web --app $HEROKU_APP_NAME