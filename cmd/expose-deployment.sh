#!/bin/bash

# Prompt user for deployment name
read -p "Enter deployment name: " DEPLOYMENT_NAME

# Prompt user for port
read -p "Enter port number: " PORT

# Expose deployment as a service
kubectl expose deployment "$DEPLOYMENT_NAME" --type=LoadBalancer --port="$PORT"
