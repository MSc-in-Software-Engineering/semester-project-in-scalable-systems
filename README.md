# Semester project in scalable systems

## About

- Group: **_Group 1_**
- System: **_Scalable system_**
- Problem: **_How can a scalable system process different data sources to visualize the impact of gas emissions on quality of life?_**
- Research questions:
    - **_What technologies can be utilized to accommodate big data processing in a scalable manner?_** 
    - **_How can different types of visualization models be used to showcase processed data?_** 

## Source code and CI/CD workflow

Code for each of the services within the infrastructure are in the folder **_src_**.

To accommodate scalability, each service has its own corresponding Kubernetes manifest file for deployment.

Remember to install the Strimzi operator:
```helm install -n semester-project strimzi-cluster-operator oci://quay.io/strimzi-helm/strimzi-kafka-operator --set watchAnyNamespace=true```

To run the CI/CD workflow from commit to deployment and release, ensure that the self-runner for the deployment step is running on the local machine. Beware that you might need to authorize [GitHub container registry](https://www.andrewhoog.com/post/authorizing-github-container-registry/).

The VM utilized for this repository in which deployment is being made is on the machine **_bds-g01-n2_**.

At last, ensure that a VPN connection to SDU's network is established.

## Links
- HDFS namenode open on port 50070 (http://localhost:50070/)
- HDFS datanode open on port 50075 (Doesn't have UI)
- Hive server open on port 10000 (Doesn't have UI)
- Hive metastore open on port 9083 (Doesn't have UI)
- Spark master open on port 8080 (Doesn't have UI)
- Jupyterlav for spark open on port 8888 (http://localhost:8888/)
- Superset open on port 8088 (http://localhost:8088/)
