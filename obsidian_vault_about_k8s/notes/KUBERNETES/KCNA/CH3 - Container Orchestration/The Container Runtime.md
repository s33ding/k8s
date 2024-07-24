It is a peace of software responsible for actually running containers.

- It works with the Kubelet on each worker node communicates w/ the container runtime to manage containers.
- Container runtime is not part of K8s. It is installed separately.
- Multiple options for containers runtimes that will work w/ k8s.

![[k8s_container_run_time.png]]

###### CRI (Container Runtime Interface)
- Also called CRI.
- Standard protocol for communication between kubelet and the container runtime.
- Any container runtime that supports the CRI standard should work w/ K8s.

![[k8s_cri.png]]
![[k8s_example_of_containers_runtime.png]]