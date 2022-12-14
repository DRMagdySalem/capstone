#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=kube_proj

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy kube-proj --image=magdysalemm/kube_proj:v1.0.0

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
pod=kubectl get pods |grep kube |awk '{print $1}'
# Step 4:
# Forward the container port to a host
#kubectl port-forward pod/$pod --address 0.0.0.0 8000:80
