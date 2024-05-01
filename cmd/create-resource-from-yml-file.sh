# Create resources from a YAML file
echo "Enter the name of the yaml file:"
read YAML_FILE

kubectl create -f $YAML_FILE
