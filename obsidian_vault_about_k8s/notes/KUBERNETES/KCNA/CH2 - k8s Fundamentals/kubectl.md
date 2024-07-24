Use this command to list all of the available resource types in the cluster:
> kubectl api-resources

Command to get documentations about a resource:
kubectl explain


# Kubernetes Lab Session Notes

1. Edit the Pod configuration file using `vim`:
    - Command: `vim my-pod.yml`

```yml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
  - name: nginx
    image: nginx:stable

```
2. Apply the Pod configuration using `kubectl` to create the Pod:
    - Command: `kubectl apply -f my-pod.yml`
    - Output: `pod/my-pod created`

3. Check the status of the Pod to ensure it's being created:
    - Command: `kubectl get pods`
    - Output:
        ```
        NAME     READY   STATUS              RESTARTS   AGE
        my-pod   0/1     ContainerCreating   0          16s
        ```


3. delete the pod:
    - Command: `kubectl delete pod my-pod`
