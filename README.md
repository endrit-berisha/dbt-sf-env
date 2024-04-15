# DBT/Snowflake Local Setup Environment

This repository contains sample code for a DBT project configured to run with Snowflake using Docker locally.


### Prerequisites

Before you start, ensure you have the following installed:
- [Docker](https://www.docker.com/products/docker-desktop)

----

#### Steps

1. Create a `.env` file** and replace these values
```
SNOWFLAKE_ACCOUNT="url prefix for your snowflake connection"
SNOWFLAKE_USER="user"
SNOWFLAKE_PASSWORD="password"
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