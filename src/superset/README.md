# Initialize a local Superset Instance

When starting up the container for the first time, do the following:

1. Setup the private key inside the superset_config.py, run the command below and remeber to have the secret key as uppercase.
    ...
        openssl rand -base64 42
    ...
    
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

1. To connect Superset to Hive, you will need to do the following
    
    - Go into the container, by first running:
        ```
        docker ps
        ```
    - Find the container id and execute a bash shell in it:
        ```
        docker exec -it [container id] bash
        ```
    - Execute pip install command to install the newest pyhive extension:
        ```
        pip install pyhive==0.7.0
        ```
    - Restart superset:
        ```
        docker compose -f docker-compose.yml  stop
        ```
        ```
        docker compose -f docker-compose.yml  start
        ```
    - Go to the superset user interface, and go to the following:

        1. Data 
        1. Database connection
        1. Click on (+ Database)
        1. Select the 'Supported databases' dropdown
        1. Select Apache Hive
        1. Enter the following SQL Alchemy URI
            ```
            hive://hive@hive-server:10000/emissions
            ```
    - It should now be connected.
