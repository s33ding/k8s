Definition of **orchestration** :
- Orchestration means using automation to take on the work of  running and managing containerized workloads.
- Orchestration includes things like assigning containers to a server and spinning them up on that server, or restarting a broken container.

What is Container Orchestration?
- Automation of the work required to run and manage containerized workloads.

Manual
- Perform tasks like deploying, running, and restarting containers manually.
- You have to perform each task yourself, like "Log in to three nodes and spin up a container on each"
- Like playing several musical instruments at once.

Orchestration
- Tasks are automated
- you provide general cmd, like "Create 3 replicas of this container."
- Like conducting an orchestra, you provide general direction, and the technology handles the details of playing the instruments.

---
### Ex:

###### Deploying Containers to Servers

- Manual: Log in to 2 servers and run a container for redundancy.
- Orchestration:  "Give me 2 replicas!" - Orchestration tool handles deploying them to 2 servers.
###### Restarting  a Failed Container

- Manual: If a container is not functioning correctly, you must log in to the server and restart it.
- Orchestration:   Orchestration tool detects a problem and restarts the container.
---
### Kubernetes Is  Container Orchestration Tool!

- Deploying Containers: K8s Scheduler automatically assigns a Pod to a Node. kubelet handles spinning up the containers on that Node.
- Restarting a Broken Container:  kubelet automatically restarts containers that are unhealthy. Kubernetes Liveness Probes let you customize how kubelet detects the container's health status.











