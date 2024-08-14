# DaemonSet

A DaemonSet in Kubernetes is a specialized type of controller that ensures a copy of a specific pod runs on all (or some) nodes in a cluster. DaemonSets are typically used for deploying system-level applications that need to run on every node, such as:

    • Log Collection Agents: For aggregating logs from all nodes.
    • Monitoring Agents: For collecting metrics and health data from all nodes.
    • Networking Services: Such as DNS or VPN services that need to be present on every node.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl get daemonsets` |List all DaemonSets in the current namespace |`kubectl get daemonsets` |
|`kubectl get daemonsets -n <namespace>` |List all DaemonSets in a specific namespace |`kubectl get daemonsets -n my-namespace` |
|`kubectl describe daemonset <daemonset>` |Show detailed information about a specific DaemonSet |`kubectl describe daemonset my-daemonset` |
|`kubectl create -f <file>` |Create a DaemonSet from a YAML or JSON file |`kubectl create -f daemonset.yaml` |
|`kubectl apply -f <file>` |Apply a configuration to a DaemonSet from a file |`kubectl apply -f daemonset.yaml` |
|`kubectl delete daemonset <daemonset>` |Delete a DaemonSet |`kubectl delete daemonset my-daemonset` |
|`kubectl rollout status daemonset/<daemonset>` |Watch the rollout status of a DaemonSet |`kubectl rollout status daemonset/my-daemonset` |
|`kubectl rollout restart daemonset/<daemonset>` |Restart all the pods managed by a DaemonSet |`kubectl rollout restart daemonset/my-daemonset` |
|`kubectl set image daemonset/<daemonset> <container>=<new_image>` |Update the image of a DaemonSet's container |`kubectl set image daemonset/my-daemonset my-container=nginx:latest` |
|`kubectl scale daemonset <daemonset> --replicas=<count>` |Scale a DaemonSet to the specified number of replicas (Note: DaemonSets typically manage one pod per node) |`kubectl scale daemonset my-daemonset --replicas=3` |
|`kubectl get pods -l app=<label>` |List all pods managed by a specific DaemonSet using a label selector |`kubectl get pods -l app=my-daemonset` |
|`kubectl logs daemonset/<daemonset>` |Get logs from all pods managed by a DaemonSet |`kubectl logs daemonset/my-daemonset` |
|`kubectl exec -it daemonset/<daemonset> -- <command>` |Execute a command in a pod managed by a DaemonSet |`kubectl exec -it daemonset/my-daemonset -- /bin/sh` |
|`kubectl explain daemonset` |Show the schema of the DaemonSet resource |`kubectl explain daemonset` |
