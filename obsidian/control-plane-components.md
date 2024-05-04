### Control Plane Components

API SERVER
- The center of the control plane
- Other components (and users) use it to communicate and interact w/ the cluster.

ETCD
- Reliable object storage 
- Used by the API Server to store data about the state of the cluster.
- Storage is distributed and  can have multiple nodes for reliability.

SCHEDULER
- Watches for new Pods that have not yet been assigned to a worker Node.
- Selects an appropriate Node to run each new Pod on.
- This process is known as scheduling.

CONTROLLER MANAGER
- Combines multiple controllers into a single process.
- Each controller provides different functionality to the cluster.
- Example: Job controller watches for new  Jobs and creates Pods to execute the Job workoad.

CLOUD CONTROLLER MANAGER
- Runs controllers that interact w/ cloud provider APIs and features.
- Only runs the controllers needed for the cloud provider you are using.
- Non-cloud clusters do not have a cloud controller manager.
