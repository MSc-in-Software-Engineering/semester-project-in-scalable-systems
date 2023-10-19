# Hadoop Distributed File System (HDFS)

## Initial setup
Kubernetes operators are used as customer controllers that automate the management of applications within Kubernetes clusters. Helm is used as a tool to automate the creation, packaging, configuration and deployment of Kubernetes applications.

1. Create namespace to contain __ONLY__ the Stackable operators no other resources:
    - `kubectl create namespace stackable`
1. Install operators needed to setup the HDFS cluster __([LINK](https://docs.stackable.tech/home/stable/hdfs/getting_started/installation#_helm))__
    - Add the Stackable Helm repository: 
        `helm repo add stackable-stable https://repo.stackable.tech/repository/helm-stable/`
    - Install the the Stackable operators:
        - `helm install -n stackable --wait zookeeper-operator stackable-stable/zookeeper-operator --version 23.7.0`
        - `helm install -n stackable --wait hdfs-operator stackable-stable/hdfs-operator --version 23.7.0`
        - `helm install -n stackable --wait commons-operator stackable-stable/commons-operator --version 23.7.0`
        - `helm install -n stackable --wait secret-operator stackable-stable/secret-operator --version 23.7.0`
    - If MicroK8s is being used to install the secrets operator, use the following option:
        - `--set kubeletDir=/var/snap/microk8s/common/var/lib/kubelet.`
    - Verify the operators are installed in the namespace if there are 4 pods running, one for each operator
        - `kubectl -n stackable get pods`  
1. Setup the HDFS cluster __([LINK](https://docs.stackable.tech/home/stable/hdfs/getting_started/first_steps))__   
    - Apply the necesarty manifest files for a Zookeper cluster for orchestration
        - `kubectl apply -f zk.yaml`
        - `kubectl apply -f znode.yaml`
    - Check the state of the Zookeeper cluster through tracking:
        - `kubectl rollout status --watch --timeout=5m statefulset/simple-zk-server-default`
    - Apply HDFS cluster which has three components: the namenode, the datanode and the journalnode.
        - `kubectl apply -f hdfs.yaml`
    - Check the state of the HDFS cluster through tracking:
        - `kubectl rollout status --watch --timeout=5m statefulset/simple-hdfs-datanode-default`
        - `kubectl rollout status --watch --timeout=5m statefulset/- simple-hdfs-namenode-default`
        - `kubectl rollout status --watch --timeout=5m statefulset/simple-hdfs-journalnode-default`
    - Apply WebHDFS REST API as a filesystem interface for HDF, to verify everything works
        - `kubectl apply -f webhdfs.yaml`
    - Check the state of the WebHDFS pod through tracking
        - `kubectl rollout status --watch --timeout=5m statefulset/webhdfs`
    - To begin with the cluster should be empty: this can be verified by listing all resources at the root directory (which should return an empty array!):
        - `  kubectl exec -n default webhdfs-0 -- curl -s -XGET "http://simple-hdfs-namenode-default-0:9870/webhdfs/v1/?op=LISTSTATUS"`
    - Creating a file in HDFS using the Webhdfs API requires a two-step PUT (the reason for having a two-step create/append is to prevent clients from sending out data before the redirect). First, create a file with some text in it called testdata.txt and copy it to the tmp directory on the helper pod:
        - `echo "hello world" > testdata.txt`
        - `kubectl cp -n default ./testdata.txt webhdfs-0:/tmp`
    - Use curl to issue a PUT command:
        - `kubectl exec -n default webhdfs-0 --
            curl -s -XPUT -T /tmp/testdata.txt "http://simple-hdfs-namenode-default-0:9870/webhdfs/v1/testdata.txt?user.name=stackable&op=CREATE&noredirect=true"`
    - Returns a location, put that into the following command:
        - `kubectl exec -n default webhdfs-0 -- curl -s -XPUT -T /tmp/testdata.txt "location"`
    - Check the resources in the filesystem again:
        - `kubectl exec -n default webhdfs-0 -- curl -s -XGET "http://simple-hdfs-namenode-default-0:9870/webhdfs/v1/?op=LISTSTATUS"`
    - Delete the file again:
        - `kubectl exec -n default webhdfs-0 -- curl -s -XDELETE "http://simple-hdfs-namenode-default-0:9870/webhdfs/v1/testdata.txt?user.name=stackable&op=DELETE"`
    - Everything is now setup.