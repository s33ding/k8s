Each of these pods serves a specific purpose in managing and maintaining the Kubernetes cluster.

![[k8s_get_pods.png]]

| Component                   | Role                                                                      |
| --------------------------- | ------------------------------------------------------------------------- |
| **CoreDNS**                 | Provides **DNS resolution** for the cluster.                              |
| **etcd**                    | **Stores** the cluster's **state**.                                       |
| **kindnet**                 | Handles **networking** within the cluster.                                |
| **kube-apiserver**          | **Exposes** the Kubernetes **API**.                                       |
| **kube-controller-manager** | Runs **controller processes** that **regulate** the state of the cluster. |
| **kube-proxy**              | Maintains **network rules** on nodes.                                     |
| **kube-scheduler**          | **Assigns pods** to nodes based on **resource availability**.             |
| **storage-provisioner**     | **Dynamically** provisions storage **volumes**.                           |
The multiple instances you see, such as "kindnet" and "kube-proxy," likely correspond to the number of nodes in your Minikube cluster. Each node typically has its own instance of these system components to ensure redundancy and fault tolerance.
