# Scale a deployment to a specific number of replicas
echo "Enter the deployment's name:"
read DEPLOYMENT_NAME

echo "Enter the number of replicas:"
read NUMBER_OF_REPLICAS

kubectl scale --replicas=$NUMBER_OF_REPLICAS deployment/$DEPLOYMENT_NAME
