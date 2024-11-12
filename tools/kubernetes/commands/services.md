# Services

A service is an abstraction that defines a logical set of pods and a policy by which to access them. Services enable network access to a set of pods.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl get services` |List all services in the current namespace |`kubectl get services` |
|`kubectl get services -n <namespace>` |List all services in a specific namespace |`kubectl get services -n my-namespace` |
|`kubectl get services --show-labels` |List all services with their labels |`kubectl get services --show-labels` |
|`kubectl get services -l <label>=<value>` |List services with a specific label |`kubectl get services -l app=nginx` |
|`kubectl get services -o wide` |List all services with additional details such as cluster IPs and ports |`kubectl get services -o wide` |
|`kubectl describe service <service>` |Show detailed information about a specific service |`kubectl describe service my-service` |
|`kubectl expose deployment <deployment> --port=<port> --target-port=<target-port>` |Expose a deployment as a new service |`kubectl expose deployment my-deployment --port=80 --target-port=8080` |
|`kubectl delete service <service>` |Delete a service |`kubectl delete service my-service` |

## Services Tips

    Endpoints are the registered instances (ip addresses)

|Pointer | Command |
|---------|----------|
|generate service manifest | `kubectl expose --help`|
|generate service manifest for a pod | `kubectl expose pod nginx --name=nginx-svc --port=80 --target-port=80 --dry-run=client -o yaml`|
|generate nodeport service manifest for a pod | `kubectl expose pod nginx --name=nginx-svc --port=80 --target-port=80 --dry-run=client -o yaml --type=NodePort`|
|generate nodeport service manifest for a deploy | `kubectl expose deployment nginx --name=nginx-svc --port=80 --target-port=80 --type=NodePort --dry-run=client -o yaml`|

Types:

- ClusterIP (default)
  - an internal ip will be registered
  - only objects within the cluster can reach
  - use for apps in private subnets like dbs and workers
- NodePort
  - exposes the Service on each Node's IP at a static port (NodePort)
  - access via `<WorkerIP>:<NodePort>` like `198.199.72.166:30005`
  - allows clients to connect to the service
  - k8s allocates a port in range ***30000-32767***
- LoadBalancer
  - improve the nodeport challenges. e.g: port name
  - between client and
  - cloud provider creates a dns endpoint and ip that directs traffic to the service nodeport. <br />
  **It costs money**
  - **Ingress**
    - Ingress Resource
      - contains set of routing rules based on which traffic is routed to a service
    - Ingress Controller
      - takes care of the Layer 7 proxy to implement ingress rules
      - **You must have an ingress controller to satisfy an ingress**
- ExternalName
