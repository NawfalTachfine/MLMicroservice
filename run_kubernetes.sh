#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="nawfaltachfine/ml-microservice:1.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl get nodes
kubectl create deployment ml-microservice --image=$dockerpath
kubectl get deployments

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/ml-microservice 8000:80
