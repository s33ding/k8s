# Script 1: Fetch information about all pods
kubectl get pods

# Script 2: Describe a specific pod
kubectl describe pod <pod_name>

# Script 3: Create resources from a YAML file
kubectl create -f <filename.yaml>

# Script 4: Delete a specific pod
kubectl delete pod <pod_name>

# Script 5: Scale a deployment to a specific number of replicas
kubectl scale --replicas=<replica_count> deployment/<deployment_name>

# Script 6: Update a deployment with a new image version
kubectl set image deployment/<deployment_name> <container_name>=<new_image_version>

# Script 7: Expose a deployment as a service
kubectl expose deployment <deployment_name> --type=LoadBalancer --port=<port>

# Script 8: Apply changes to resources defined in a YAML file
kubectl apply -f <filename.yaml>

# Script 9: Check the status of all resources in the current namespace
kubectl get all

# Script 10: Delete a specific deployment
kubectl delete deployment <deployment_name>
