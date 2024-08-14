# Persistent Volumes and Claims

Persistent volumes (PVs) and persistent volume claims (PVCs) provide a way to manage durable storage in a Kubernetes cluster.
|Command |Explanation |Example Usage |
|---------|-------------|---------------|
|`kubectl get pv` |List all persistent volumes |`kubectl get pv` |
|`kubectl get pvc` |List all persistent volume claims in the current namespace |`kubectl get pvc` |
|`kubectl get pvc -n <namespace>` |List all persistent volume claims in a specific namespace |`kubectl get pvc -n my-namespace` |
|`kubectl get pv --show-labels` |List all persistent volumes with their labels |`kubectl get pv --show-labels` |
|`kubectl get pv -l <label>=<value>` |List persistent volumes with a specific label |`kubectl get pv -l environment=prod` |
|`kubectl get pvc --show-labels` |List all persistent volume claims with their labels |`kubectl get pvc --show-labels` |
|`kubectl get pvc -l <label>=<value>` |List persistent volume claims with a specific label |`kubectl get pvc -l app=nginx` |
|`kubectl describe pv <pv>` |Show detailed information about a specific persistent volume |`kubectl describe pv my-pv` |
|`kubectl describe pvc <pvc>` |Show detailed information about a specific persistent volume claim |`kubectl describe pvc my-pvc` |
|`kubectl delete pvc <pvc>` |Delete a persistent volume claim |`kubectl delete pvc my-pvc` |
|`kubectl delete pv <pv>` |Delete a persistent volume |`kubectl delete pv my-pv` |

## Volume Tips

We will use minikube instead of do as it does not provide underlying host
