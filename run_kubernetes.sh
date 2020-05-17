#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=pascalegbenda/udacity-api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-api --image=$dockerpath:v1 --port=80


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-api --type=LoadBalancer --port=80

# Open the service 
minikube service udacity-api