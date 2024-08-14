# ClusterRoles and ClusterRoleBindings

ClusterRoles and ClusterRoleBindings are similar to Roles and RoleBindings but apply across the entire cluster, not just within a specific namespace.
| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl get clusterroles` |List all cluster roles |`kubectl get clusterroles` |
|`kubectl describe clusterrole <clusterrole>` |Show detailed information about a specific cluster role |`kubectl describe clusterrole my-clusterrole` |
|`kubectl get clusterroles --show-labels` |List all cluster roles with their labels |`kubectl get clusterroles --show-labels` |
|`kubectl get clusterroles -l <label>=<value>` |List cluster roles with a specific label |`kubectl get clusterroles -l environment=prod` |
|`kubectl create clusterrole <name> --verb=<verb> --resource=<resource>` |Create a new cluster role with specified permissions |`kubectl create clusterrole my-clusterrole --verb=get,list --resource=pods` |
|`kubectl delete clusterrole <clusterrole>` |Delete a cluster role |`kubectl delete clusterrole my-clusterrole` |
|`kubectl get clusterrolebindings` |List all cluster role bindings |`kubectl get clusterrolebindings` |
|`kubectl get clusterrolebindings --show-labels` |List all cluster role bindings with their labels |`kubectl get clusterrolebindings --show-labels` |
|`kubectl get clusterrolebindings -l <label>=<value>` |List cluster role bindings with a specific label |`kubectl get clusterrolebindings -l environment=prod` |
|`kubectl describe clusterrolebinding <clusterrolebinding>` |Show detailed information about a specific cluster role binding |`kubectl describe clusterrolebinding my-clusterrolebinding` |
|`kubectl create clusterrolebinding <name> --clusterrole=<clusterrole> --user=<user>` |Create a new cluster role binding |`kubectl create clusterrolebinding my-clusterrolebinding --clusterrole=my-clusterrole --user=my-user` |
|`kubectl delete clusterrolebinding <clusterrolebinding>` |Delete a cluster role binding |`kubectl delete clusterrolebinding my-clusterrolebinding` |
