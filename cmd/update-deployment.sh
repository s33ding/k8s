# Update a deployment with a new image version
#!/bin/bash

# Prompt user for deployment name
read -p "Enter deployment name: " DEPLOYMENT_NAME

# Prompt user for container name
read -p "Enter container name: " CONTAINER_NAME

# Prompt user for new image version
read -p "Enter new image version: " NEW_IMAGE_VERSION

# Execute the kubectl command
kubectl set image deployment/"$DEPLOYMENT_NAME" "$CONTAINER_NAME"="$NEW_IMAGE_VERSION"
