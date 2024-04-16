#!/bin/bash

if [ "$(git status --porcelain)" ]; then
    echo "files modified!  --building and running..."
    docker build -t dbt-sf-env .
    docker run --env-file .env --rm dbt-sf-env compile
    docker run --env-file .env --rm dbt-sf-env run
else
    echo "no files modified! --running..."
    docker run --env-file .env --rm dbt-sf-env compile
    docker run --env-file .env --rm dbt-sf-env run
fi
