K8s uses a virtual network to allow Pods to communicate within the cluster.
![[k8s_virtual_cluster_network.png]]
### Cluster DNS
 - Includes a Domain Name Server (DNS) .
 - Allows containers to discover Services within the cluster using hostnames.
 - K8s container are automatically configured to use the cluster DNS server.
 - Kubernetes containers are automatically configured to use the cluster DNS server.

### Network Policy
- Each Network Policy select which policy selects which **Pods** it applies to.
- The policy provides rules that define what incoming and/or outgouing traffic is allowed.
- Pods are non-isolated by default, meaning all network traffic is allowed.
- If a Network Policy selects a Pod, the pod beomes isolated. Only traffic allowed by a Network Policy is allowed. Incoming/ingress and outgoing/egress traffic are treated separately.

![[K8s_network_policy.png]]


 