#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=mansoorjain89/deploying_ml_application

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=mansoorjain89/deploying_ml_application:v1 predict-app --port=80 --labels="app=predict-app"

# Step 3:
# List kubernetes pods
kubectl get pods
sleep 30
POD=$(kubectl get pods | grep predict | awk '{print $1}')

# Step 4:
# Forward the container port to a host
kubectl port-forward $POD  8000:80

