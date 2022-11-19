circleci badge :
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/DRMagdySalem/capstone/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/DRMagdySalem/capstone/tree/main)

github repo : https://github.com/DRMagdySalem/capstone.git

dockerhub repo : https://hub.docker.com/repository/docker/magdysalemm/kube_proj


in this project our target is to build a CI/CD pipeline for our flask application , using docker facilities in the continuous integration process and publishing an image of the containerized app , while using kubernetes facilities in continuous deployments to use the containerized image to newly built clusters.

pipeline sections : 

1) build :

in this section we built an environment and set all the needed dependencies for linting our code and building the docker image .

2) lint :

in this section we used the pylint and hadolint facilities to test and rate validate the code .

3) docker-build :

in this section we managed to tag and build the needed docker image for our app , and after that publishing the docker image to docker hub to be furtherly used in deployments 

4) Kubernetes-cluster:

in this section ; our target was to build a kubernetes cluster using amazon EKS facilities , and after that deploying the containerized image from dockehub to the cluster .


Project files :

1) Makefile : contains the needed commands for installing depencies from the requirements.txt file and also for linting the code through hadolint and pylint .

2) Dockerfile : used for copying the application files "app.py" to the environment to be dockerized and exposing the needed port 

3) app.py : carrying the logic for the flask application API to set the right predictions .

4) Make_predictions.sh : a shell script for testing the API functionality by applying a simple prediction 

5) upload_docker.sh : used for setting the paths to wich the docker image will be published and proceed in publishing the image

6) requirements.txt : carrying the needed requirements for the environment that will be installed using the Makefile .

7) model_data directory : carrying the needed libraries and data models for the predictions application .

8) run_docker.sh : for taging and building the docker image .

9) run_kubernete.sh : a shell script used for deploying the docker image to the kubernetes cluster nodes and forwading the container port to a host .

10) EKS_cluster_template.txt : contains the template used for creating the EKS cluster 

11) node-group_template.txt : contains the template used for creating the node-group

12) .circleci/config : the circleci configuration file for controlling the whole pipeline from integration to deployment .

screenshots provided for the pipleline processes.

