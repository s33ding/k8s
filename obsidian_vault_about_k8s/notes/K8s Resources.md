Introduction:

    Kubernetes resources are objects managed by the Kubernetes API. Resources play a vital role in orchestrating and maintaining applications within the cluster.


Resource types in Kubernetes:

**Pods**:
	Smallest deployable units, encapsulating one or more containers.

**Deployments**:
	Manages Pod life cycles, ensuring desired replicas, and handling updates.

**Services**:
	Provides stable endpoints for accessing Pods, enabling intercommunication.

### Kubernetes Objects

Kubernetes objects are entities in the Kubernetes system that represent the state of your cluster. These objects can describe what containerized applications are running, the resources available to them, and the policies around how they behave, such as restart policies, upgrades, and fault-tolerance. Here's an overview of some common Kubernetes objects:

**Pods**: 
	The smallest and simplest Kubernetes object. A Pod represents a set of running containers on your cluster.

**Services**: 
	An abstract way to expose an application running on a set of Pods as a network service. With Kubernetes, you don't need to modify your application to use an unfamiliar service discovery mechanism. Kubernetes gives Pods their own IP addresses and a single DNS name for a set of Pods, and can load-balance across them.

**Volumes**: 
	A directory, possibly with some data in it, which is accessible to the containers in a pod. Kubernetes supports several types of Volumes that abstract away details of how storage is provided from how it is consumed.

**Namespaces**: 
	Kubernetes supports multiple virtual clusters backed by the same physical cluster. These virtual clusters are called namespaces. They let you partition resources into logically named groups.

**Deployments**: 
	A higher-level concept that manages Pods and ReplicaSets (which in turn manage Pods). Deployments use a template for a Pod and control scaling and updating policies.

**ReplicaSets**: 
	Ensures a specified number of pod replicas are running at any given time. It is used mostly as a mechanism to maintain the stability of a set of Pods.

**ConfigMaps and Secrets**: 
	Objects that store non-confidential and confidential data, respectively. This data can be used by Pods or system components at runtime.

**Ingress**: 
	An API object that manages external access to the services in a cluster, typically HTTP. Ingress can provide load balancing, SSL termination, and name-based virtual hosting.

**StatefulSets**: 
	Manages the deployment and scaling of a set of Pods, and provides guarantees about the ordering and uniqueness of these Pods.

**DaemonSets**: 
	Ensures that all (or some) nodes run a copy of a Pod. As nodes are added to the cluster, Pods are added to them. As nodes are removed from the cluster, those Pods are garbage collected.

**Jobs and CronJobs**: 
	Manage tasks that run to completion and tasks that need to run at certain times, respectively.

These objects can be defined in YAML or JSON format, and you use Kubernetes API to create, update, and delete them. Managing these objects effectively is key to operating Kubernetes effectively.

### Interaction:

**Creation**: 
	Users create Kubernetes resources by defining their specifications either through command-line tools like kubectl or by writing configuration files in YAML or JSON format.

**Modification**: 
	Users can modify existing resources by updating their configurations using kubectl apply with the updated configuration files.

**Management**: 
	Through these actions, users manage the state and behavior of their applications and configurations within the Kubernetes cluster, ensuring they align with desired outcomes.
	
---
Study Tips:

- Use of kubectl api-resources to list available resource types.
- Utilization of kubectl explain to access documentation for resource types.
- Introduction to init containers for pre-container startup tasks.
- Creation of custom resource types using CustomResourceDefinition.

