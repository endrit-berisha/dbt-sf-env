#!/bin/bash
docker run --env-file .env --rm dbt-sf-env debug

# Check if any .sql files have been modified
if git diff --name-only --exit-code -- '*.yml' '*.sh' '*.sql'; then
    echo "No changes detected in DBT files. Skipping..."
else
    echo "Changes detected in DBT files. Building Docker image and running DBT..."
    docker build -t dbt-sf-env .
    docker run --env-file .env --rm dbt-sf-env compile
    docker run --env-file .env --rm dbt-sf-env run
fi