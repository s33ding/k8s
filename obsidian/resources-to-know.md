Resources to Know

### ReplicaSet
- Ensures a given nmb of replica Pods are running at a given time.
- Creates Pods from a template, or deletes them to meet the desired replica count.
- ReplicaSet Use Cases
    1. Load Balancing and Redundancy: Ensures multiple pod instances are available for load distribution and service reliability.
    2. Horizontal Scaling: Adjusts the number of pods to handle varying loads, useful for predictable traffic changes.
    3. Self-healing: Automatically replaces failed pods to maintain the desired state and application availability.

### Deployment
- Provides a way to declaratively update Pods and ReplicaSets.
- Great for scaling stateless applications.
- Uses a RollingUpdate deployment strategy by default for zero-downtime updates to workloads.
- Deployment Use Cases
    1. Automated Updates: Manages updates to pods and ReplicaSets with minimal downtime, supporting automated rollouts and rollbacks.
    2. CI/CD Integration: Facilitates frequent and reliable updates as part of continuous integration and deployment workflows.
    3. A/B Testing: Allows for controlled user-directed testing by varying traffic between different versions of an application.
    4. Blue-Green Deployment: Enables near-zero downtime deployments by running two identical environments and shifting traffic gradually.

### StatefulSet
- Similar to a deployment, but for stateful Pods.
- Pods maintain order and a sticky identity (same Pod name, network hostname), even if they are re-created on a different node.  
- Stateful pods are particularly suited for applications that require stable, unique network identifiers, stable persistent storage, and ordered, graceful deployment and scaling.

- Use Cases:
    1. Databases: Many relational databases like MySQL, PostgreSQL, or distributed databases like MongoDB and Cassandra, benefit from StatefulSets because they need persistent storage and stable network identities.
    2. Clustered Applications: Applications that run as a cluster, such as Apache ZooKeeper or etcd, which require stable membership and state across component restarts.

### DaemonSet
- Runs a replica Pod on **each Node**.
- Dynamically creates new  replicas for new  Nodes as they hoin the cluster.
- Can use filtering criteria to only run on some Nodes.

### Job
- Reliably runs a containerized task  to completion.
- Automatically retries if the containerized task fails.

### CronJob
- Runs Jobs repeatedly according to a schedule.
