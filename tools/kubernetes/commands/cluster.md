# Cluster

A cluster is a set of nodes (machines) running containerized applications managed by Kubernetes. The cluster provides a resilient, scalable environment for applications.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `kubectl cluster-info` | Display cluster information | `kubectl cluster-info` |
| `kubectl cluster-info dump` | Display cluster information: verbose | `kubectl cluster-info dump` |
| `kubectl get componentstatuses` | Get the status of cluster components | `kubectl get componentstatuses` |
| `kubectl get namespaces` | List all namespaces in the cluster | `kubectl get namespaces` |
| `kubectl get namespaces --show-labels` | List all namespaces with their labels | `kubectl get namespaces --show-labels` |
| `kubectl get namespaces -l <label>=<value>` | List namespaces with a specific label | `kubectl get namespaces -l environment=prod` |
| `kubectl describe namespace <namespace>` | Show detailed information about a specific namespace | `kubectl describe namespace default` |
| `kubectl create namespace <namespace>` | Create a new namespace | `kubectl create namespace my-namespace` |
| `kubectl delete namespace <namespace>` | Delete a namespace | `kubectl delete namespace my-namespace` |
