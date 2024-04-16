# DBT/Snowflake Local Setup Environment

This repository contains sample code for a DBT project configured to run with Snowflake using Docker locally.


### Prerequisites

Before you start, ensure you have the following installed:
- [Docker](https://www.docker.com/products/docker-desktop)

----

#### Steps

1. Create a `.env` file** and replace these values in '<>' with your credentials
```
SNOWFLAKE_ACCOUNT=<account_locator_id>
SNOWFLAKE_USER=<user>
SNOWFLAKE_PASSWORD=<password>
SNOWFLAKE_ROLE=<role>
SNOWFLAKE_DATABASE=<database>
SNOWFLAKE_SCHEMA=<schema>
SNOWFLAKE_WAREHOUSE=<warehouse>
```

1. Build the docker image
```
docker build -t dbt-sf-env .
```

2. Running DBT Commands
  * To test your connection and setup:
  ```
  docker run --env-file .env --rm dbt-sf-env debug
  ```

  * To execute your DBT models:
  ```
  docker run --env-file .env --rm dbt-sf-env run
  ```

To be continued!