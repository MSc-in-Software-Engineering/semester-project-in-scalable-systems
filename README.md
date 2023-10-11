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

Additionally two compose files has been created, one utilized for the CI/CD workflow **_(docker-compose.prod.yml)_** and one for local usage **(docker-compose.yml)**.

To run the CI/CD workflow from commit to deployment and release, ensure that the self-runner for the deployment step is running on the local machine. Beware that you might need to authorize [GitHub container registry](https://www.andrewhoog.com/post/authorizing-github-container-registry/).

The VM utilized for this repository in which deployment is being made is on the machine **_bds-g01-n2_**.

At last, ensure that a VPN connection to SDU's network is established.
