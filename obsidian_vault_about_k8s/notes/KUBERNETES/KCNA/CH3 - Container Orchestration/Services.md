- Select a set of Pods and expose them as a single network entity.
- Different Service types for different use cases.
- Clients communicate with the Service. Traffic will be directed dynamically to one of the underlying Pod endpoints.
![[k8s_services.png]]
### Service Types:
- ClusterIP - Expose the Service on an IP address internally within the cluster network.
- NodePort - Expose the Service externally using a node port listening on each Node.
- LoadBalancer - Expose the Service  externally using a cloud provider load balancer.
- ExternalName - Create a DNS record pointing to an external location outside the cluster network. This makes it easy for Pods to access an external URL or IP address.

### Headless Services
- Services w/ no cluster IP address.
- Can be used to interface with service discovery mechanisms w/o actually proxying traffic.

### Services w/o Selectors
- You can create a Service with no selector to select backend Pods
- These do not automatically create endpoints. You must create endpoints manually.

### Services Discovery
- Automatically detecting or locating application services on a network.
- Kubernetes provides two main ways of discovering services.
	- **Cluster DNS** - Use the cluster DNS to reference a Service by hostname. Traffic is automatically routed to a backend pod.
	- **Environment Variables** - Kubernetes automatically adds environment variables to each container that provide information about Services.

### Ingress
- A K8s object that manages external access to applications within the cluster.
- Can offer additional functionality, like load balancing or SSL termination.
- Ingress routes to a Service on the backend.

![[k8s_service_ingress.png]]

