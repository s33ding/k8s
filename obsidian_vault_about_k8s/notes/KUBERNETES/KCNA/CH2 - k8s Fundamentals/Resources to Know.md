ReplicaSet:
- Ensures a **given number**  of replica Pods are running at any given time.
- Creates Pods from a template, or deletes them to meet the desired replica count.

Deployment:
- It has some additionally functionality in comparison with replicaset, it provides a way to declaratively update Pods and ReplicaSets.
- Great for scaling stateless applications.
- 

---
### Stateless Applications

1. Independence: 
	Operates without relying on past interactions.
2. Scalability: 
	Easily scales by adding more instances.
1. Deployability: 
	Simple deployment and updates with no downtime.
1. Flexibility: 
	Allows frequent changes without disrupting processes.
1. Minimal Disruption: Updates can be made seamlessly.
2. Data Preservation: Can use external storage for session data.
3. Context: Suitability depends on application requirements.
4. Change Frequency: Varies based on application nature and lifecycle.