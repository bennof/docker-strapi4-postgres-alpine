#!/bin/sh
set -eax

if [ "$1" = "npm" ]; then
    if [ ! -d "app" ]; then
        DATABASE_CLIENT=${DATABASE_CLIENT:-sqlite} # default sqlite
        EXTRA_ARGS=${EXTRA_ARGS}
        echo "Creating a new strapi project"

        DOCKER=true npx create-strapi-app@latest app \
          --use-npm \
          --no-run \
          --dbclient=$DATABASE_CLIENT \
          --dbhost=$DATABASE_HOST \
          --dbport=$DATABASE_PORT \
          --dbname=$DATABASE_NAME \
          --dbusername=$DATABASE_USER\
          --dbpassword=$DATABASE_PASSWORD \
          --dbssl=$DATABASE_SSL \
          $EXTRA_ARGS
    fi
fi

echo "Starting your strapi app..."
chdir app
exec "$@"