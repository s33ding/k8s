read -p "enter the deployment name:" DEPLOYMENT_NAME
kubectl delete pod $DEPLOYMENT_NAME
