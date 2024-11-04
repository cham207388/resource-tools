# ReplicaSets

A ReplicaSet ensures that a specified number of pod replicas are running at any given time. It is often used by deployments to manage pod scaling.
| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl get replicasets` |List all ReplicaSets in the current namespace |`kubectl get replicasets` |
|`kubectl get replicasets -n <namespace>` |List all ReplicaSets in a specific namespace |`kubectl get replicasets -n my-namespace` |
|`kubectl get replicasets --show-labels` |List all ReplicaSets with their labels |`kubectl get replicasets --show-labels` |
|`kubectl get replicasets -l <label>=<value>` |List ReplicaSets with a specific label |`kubectl get replicasets -l app=nginx` |
|`kubectl get replicasets -o wide` |List all ReplicaSets with additional details such as selectors |`kubectl get replicasets -o wide` |
|`kubectl describe replicaset <replicaset>` |Show detailed information about a specific ReplicaSet |`kubectl describe replicaset my-replicaset` |
|`kubectl scale replicaset <replicaset> --replicas=<number>` |Scale a ReplicaSet to a specified number of replicas |`kubectl scale replicaset my-replicaset --replicas=3` |
|`kubectl delete replicaset <replicaset>` | Delete a ReplicaSet |`kubectl delete replicaset my-replicaset` |
