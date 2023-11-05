# Initialize a local Superset Instance

When starting up the container for the first time, do the following:

1. Setup your local admin account

    ```
    docker exec -it superset superset fab create-admin \
                --username admin \
                --firstname Superset \
                --lastname Admin \
                --email admin@superset.com \
                --password admin
    ```

1. Migrate local DB to latest

    ```
    docker exec -it superset superset db upgrade
    ```

1. docker exec -it superset superset load_examples

    ```
    docker exec -it superset superset load_examples
    ```

1. Setup roles

    ```
    docker exec -it superset superset init
    ```