### WORKER NODE COMPONENTS

Kube-proxy
- Acts as a network proxy to implement parts os the Kubernetes Services feature.
- Maintains network rules on Nodes to route traffic to Pods.

Kubelet
- Kubernetes agent running on each Node
- Ensures the containers specified by each Pod on the Node are running.
- Works w/ the container runtime to manage containers.

Container Runtime
- Software responsible for running containers, such as containerd or CRI-O.
- Any runtime that implements the Kubernetes CRI (Container Runtime Interface) standard will work.
- Kubelet no longer uses dockershim to support Docker as a container runtime, since Docker does not implement the CRI.


