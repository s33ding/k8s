#!/bin/bash

# Prompt user for YAML file name
read -p "Enter YAML file name: " FILENAME

# Apply changes to resources defined in the YAML file
kubectl apply -f "$FILENAME"

