#!/bin/sh
# wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
# heroku plugins:install heroku-container-registry
# heroku container:login
# docker login -e _ -u _ --password=$HEROKU_API_KEY registry.heroku.com
# heroku container:push web --app $HEROKU_APP_NAME

docker login --username=_ --password=$HEROKU_API_KEY registry.heroku.com
docker build -t registry.heroku.com/$HEROKU_APP_NAME/web .
docker push registry.heroku.com/$HEROKU_APP_NAME/web