# Pods

A pod is the smallest and simplest Kubernetes object. It represents a single instance of a running process in your cluster.
| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl get pods` | List all pods in the current namespace | `kubectl get pods` |
|`kubectl get pods -n <namespace>` | List all pods in a specific namespace |`kubectl get pods -n my-namespace` |
|`kubectl get pods --show-labels` |List all pods with their labels |`kubectl get pods --show-labels` |
|`kubectl get pods -l <label>=<value>` |List pods with a specific label |`kubectl get pods -l app=nginx` |
|`kubectl get pods --field-selector=status.phase=Running` |List only running pods |`kubectl get pods --field-selector=status.phase=Running` |
|`kubectl get pods -o wide` |List all pods with additional details such as node and IP |`kubectl get pods -o wide` |
|`kubectl describe pod <pod>` |Show detailed information about a specific pod |`kubectl describe pod my-pod` |
|`kubectl logs <pod>` |Print the logs for a container in a pod |`kubectl logs my-pod` |
|`kubectl exec -it <pod> -- <command>` |Execute a command in a container in a pod |`kubectl exec -it my-pod -- /bin/bash` |
|`kubectl exec <pod> -c <container> -it -- <command>` |Execute a command in a container in a pod <br/> **multiple containers** |`kubectl exec my-pod -c my-container -it -- /bin/bash` |
|`kubectl delete pod <pod>` |Delete a pod |`kubectl delete pod my-pod` |
|`kubectl run <name> --image=<image>` | Create a new pod with a specified image | `kubectl run my-pod --image=nginx` |
