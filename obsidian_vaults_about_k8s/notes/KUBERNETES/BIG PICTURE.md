<<<<<<< HEAD
On the left side, labeled as "Control plane," there are three "master" nodes. These represent the master components of the Kubernetes cluster that manage the state of the cluster. 

The control plane's responsibilities include:
- **making global decisions** about the cluster.
	- Ex.: scheduling. 
- **detecting and responding** to cluster **events**.
	- Ex.: starting up a new pod when a deployment's replicas field is unsatisfied.

![[k8s_architecture_overview.png]]


# Master nodes components:
### **"c-m"** (controller-manager):
	 Manages the cluster's unified state using a variety of controllers.
###  **"sched."** (scheduler):
	Responsible for assigning work, such as pods, to worker nodes.
### **"api"** (API server):
	It is the central management entity that receives all REST requests for modifications.

---

# Workers:

On the right side are nodes represented with "kubelet," which are the worker components that run on each node to make sure containers are running in a pod.

The kubelet is a fundamental component of Kubernetes, running on every node in the cluster. Its primary role is to manage the state and operation of a node's containers, ensuring that they are running as defined in the Pod specifications received from the Kubernetes API server.

Here are some of the key functions of the kubelet:

1. **Pod Management**: The kubelet regularly receives and interprets PodSpecs (specifications for pods) that are provided through the API server. It ensures that the containers described in these PodSpecs are started and running.
    
2. **Health Checking**: It regularly checks the health of the containers it manages and can restart them if they fail health checks, ensuring high availability.
    
3. **Resource Allocation**: It enforces resource limits by managing the container’s CPU, memory, and disk resources, according to the specifications in the PodSpec.
    
4. **Node Resource Reporting**: Kubelet also reports the status of the node it’s running on and the status of the pods it manages back to the control plane, helping in orchestration decisions.
    
5. **Lifecycle Management**: Handles the lifecycle of the containers it manages, from their creation through various states to their eventual termination.

# Resources:

Above the workers are various Kubernetes resources and objects such as:

|Resource Abbreviation|Full Name|Description|
|---|---|---|
|**pod**|Pod|The **smallest deployable unit**, a logical collection of one or more containers.|
|**rs**|ReplicaSet|Ensures a **specified number** of pod replicas are running at any given time.|
|**deploy**|Deployment|Manages the **deployment** of ReplicaSets and **updates** to pods.|
|**ds**|DaemonSet|Ensures that a **copy of a pod** runs on **all (or some) nodes** in the cluster.|
|**sts**|StatefulSet|Manages the **deployment and scaling** of a set of pods, and provides guarantees about the **ordering and uniqueness** of these pods.|
|**hpa**|Horizontal Pod Autoscaler|**Automatically scales** the number of pod replicas based on **observed CPU utilization** or other select metrics.|
|**quota**|ResourceQuota|Provides **constraints** that limit **aggregate resource consumption** per namespace.|
|**sc**|StorageClass|Provides a way for administrators to describe the "**classes**" of storage they offer.|
|**ing**|Ingress|Manages **external access** to the services in a cluster, typically HTTP.|
|**svc**|Service|An **abstraction** which defines a logical set of pods and a policy by which to access them.|
|**role**|Role|**Grants permissions** to resources within a specific namespace.|
|**netpol**|NetworkPolicy|Specifies how groups of pods are allowed to **communicate** with each other and other network endpoints.|
|**vol**|Volumes|Provides **storage** to a container within a pod.|
|**secret**|Secret|Used for **storing sensitive information**, such as passwords, OAuth tokens, and ssh keys.|


### PODS

![[k8s_pods.png]]

1. **Main Container**: This is likely the primary application container. 
    
2. **Init Container**: This is a special type of container that runs before the main containers are started. It's often used to perform setup tasks such as configuring the main container. 
    
3. **Side Containers**: These are additional containers that might be running alongside the main container within the same Pod. They might be providing supporting services like logging, monitoring, or any other service that the main application needs to function but are not part of the main application logic itself. 
    
4. **Volumes**: These are used for managing storage in a Pod. The volumes allow data to persist and be shared between containers within the same Pod. 





=======
On the left side, labeled as "Control plane," there are three "master" nodes. These represent the master components of the Kubernetes cluster that manage the state of the cluster. The control plane's responsibilities include making global decisions about the cluster (like scheduling), as well as detecting and responding to cluster events (like starting up a new pod when a deployment's replicas field is unsatisfied).

The master nodes contain various components such as:

- "c-m" which likely stands for "controller-manager," responsible for regulating the shared state of the cluster through various controllers.
- "sched." which stands for the scheduler, responsible for assigning work, such as pods, to worker nodes.
- "api" which stands for the API server, the central management entity that receives all REST requests for modifications.

On the right side of the image, labeled "Workers," are nodes represented with "kubelet," which are the worker components that run on each node to make sure containers are running in a pod.

Above the workers are various Kubernetes resources and objects such as:

- "pod" which is the smallest deployable unit that can be created and managed. It's a logical collection of one or more containers.
- "rs" for ReplicaSet, ensuring that a specified number of pod replicas are running at any given time.
- "deploy" for Deployment, managing the deployment of ReplicaSets and updates to pods.
- Other resources like "ds" for DaemonSet, "sts" for StatefulSet, "hpa" for Horizontal Pod Autoscaler, "quota" for ResourceQuota, "sc" for StorageClass, "ing" for Ingress, "svc" for Service, "role" and "netpol" for NetworkPolicy, "vol" for Volumes, and "secret" for storing sensitive information.
![[KUBERNETES_OVERVIEW.png]]
>>>>>>> 4108258ff466efbfd47acb5613b31f252ea36650
