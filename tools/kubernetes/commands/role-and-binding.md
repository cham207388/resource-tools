# Roles and RoleBindings

Roles and RoleBindings are used to define and enforce permissions within a namespace. Roles specify permissions, and RoleBindings assign them to users or groups.
| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl get roles` |List all roles in the current namespace |`kubectl get roles` |
|`kubectl get roles -n <namespace>` |List all roles in a specific namespace |`kubectl get roles -n my-namespace` |
|`kubectl get roles --show-labels` |List all roles with their labels |`kubectl get roles --show-labels` |
|`kubectl get rolebindings -l <label>=<value>` |List role bindings with a specific label |`kubectl get rolebindings -l environment=prod` |
|`kubectl describe role <role>` |Show detailed information about a specific role |`kubectl describe role my-role` |
|`kubectl create role <name> --verb=<verb> --resource=<resource>` |Create a new role with specified permissions |`kubectl create role my-role --verb=get,list --resource=pods` |
|`kubectl delete role <role>` |Delete a role |`kubectl delete role my-role` |
|`kubectl get rolebindings` |List all role bindings in the current namespace |`kubectl get rolebindings` |
|`kubectl get rolebindings -n <namespace>` |List all role bindings in a specific namespace |`kubectl get rolebindings -n my-namespace` |
|`kubectl get roles -l <label>=<value>` |List roles with a specific label |`kubectl get roles -l environment=prod` |
|`kubectl get rolebindings --show-labels` |List all role bindings with their labels |`kubectl get rolebindings --show-labels` |
|`kubectl describe rolebinding <rolebinding>` |Show detailed information about a specific role binding |`kubectl describe rolebinding my-rolebinding` |
|`kubectl create rolebinding <name> --role=<role> --user=<user>` |Create a new role binding |`kubectl create rolebinding my-rolebinding --role=my-role --user=my-user` |
|`kubectl delete rolebinding <rolebinding>` |Delete a role binding |`kubectl delete rolebinding my-rolebinding` |
| `kubectl auth can-i <verb> <resource>` | Check if the current user has permission to perform an action on a resource | `kubectl auth can-i create pods` <hr/> `kubectl auth can-i create pods --as bais` <hr/> `kubectl auth can-i delete deployments` <hr/> `kubectl auth can-i delete deployments --as bais --namespace my-namespace` |
| `kubectl config get-contexts` | List all contexts | `kubectl config get-contexts` |
| `kubectl config get-users` | List all users | `kubectl config get-users` |
| `kubectl config get-clusters` | List all clusters | `kubectl config get-clusters` |
