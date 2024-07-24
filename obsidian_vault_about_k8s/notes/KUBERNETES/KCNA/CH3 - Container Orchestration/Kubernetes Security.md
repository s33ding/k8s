K8s includes a variety of security features.

### 4Cs
- Cloud
- Cluster
- Containers
- Code

![[k8s_4cs.png]]

### Authentication Methods 
- Client certificates :
	Client provides an X509 client certificate. kubectl uses this method 
- Beares Tokens:
	Client passes a bearer token in a HTTP request header,
- OpenID connect tokens:
	Oauth2 integration w/ external itdentity providers. Uses a JSON Web Token (JWT) signed by the provider JWTs include identity data about the user.
- Authenticating Proxy:
	A trusted proxy validates authentication data provided via HTTP headers.
- Anonymous:
	No authentication occurs.
- And more!

### Authorization
Determining whether or not a user has permission to perform a specific operation.

### Authorization Methods

**Node**:
Special use case, grants permissions needed by kubelet to work w/ resources on a specific Node.

**Attribute - Based Access Control (ABAC)** :
Define permissions through the use of policies that use attributes to refer to users, resources, etc.

**Role-Based Access Control(RABC)**:
Assign granular permissions to roles: Then assign those roles to users.

**Webhook**:
Kubernetes API Server will reach out to an HTTP service to determine if permission is allowed. You can use this to implement a fully custom authorization scheme.

### OPA(Open Policy Agent) Gatekeeper

Open Policy Agent (OPA) Gatekeeper - create and enforce policies that control what can and can not be done in your K8s environment.

- Validates ncoming requests according to the policies you have created.
	ex: you can not create a Pod w/o attaching a descriptive label.
	- 
- OPA Gatekeeper is a generalized tool that exists outside of K8s. K8s simply uses it to provide a framework for policy enforcement.



