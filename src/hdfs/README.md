# How to use HDFS in the Hadoop ecosystem

To transfer files from host directly to HDFS, you will need to do the following
    
- Go into the container, by first running:
    ```
    docker ps
    ```
- Find the container id and execute a bash shell in it:
    ```
    docker exec -it [container id] bash
    ```
- Copy directory into a docker container:
    ```
    docker cp [folder] [docker_id]:/ 
    ```
- Delete directory into a docker container:
    ```
    docker cp [folder] [docker_id]:/ 
    ```
- At last, copy the file or directory directly to HDFS
    ```
    hadoop fs -put [file/directory on host] [location in HDFS]
    ```
- Browse the directory to see if it is there
    ```
    http://localhost:50070/explorer.html#/
    ```