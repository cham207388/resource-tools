# Nodes

Nodes are the worker machines in a Kubernetes cluster. They run containerized applications and are managed by the control plane.
| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `kubectl get nodes` | List all nodes in the cluster | `kubectl get nodes` |
| `kubectl get nodes --show-labels` | List all nodes with their labels | `kubectl get nodes --show-labels` |
| `kubectl get nodes -l <label>=<value>` | List nodes with a specific label | `kubectl get nodes -l disktype=ssd` |
| `kubectl describe node <node>` | Show detailed information about a specific node | `kubectl describe node node-1` |
| `kubectl cordon <node>` | Mark a node as unschedulable | `kubectl cordon node-1` |
| `kubectl uncordon <node>` | Mark a node as schedulable | `kubectl uncordon node-1` |
| `kubectl drain <node>` | Safely evict all pods from a node | `kubectl drain node-1 --ignore-daemonsets` |
| `kubectl delete node <node>` | Delete a node from the cluster | `kubectl delete node node-1` |
| `kubectl taint nodes <node> <key>=<value>:<effect>` | Add a taint to a node | `kubectl taint nodes node-1 key=value:NoSchedule` |
| `kubectl taint nodes <node> <key>-` | Remove a taint from a node | `kubectl taint nodes node-1 key-` |
| `kubectl label nodes <node> <label>=<value>` | Add or update a label on a node | `kubectl label nodes node-1 env=production` |
| `kubectl top nodes` | Display resource (CPU/memory) usage of nodes | `kubectl top nodes` |
| `kubectl get nodes -o wide` | List all nodes with additional details such as internal IP and external IP | `kubectl get nodes -o wide` |
| `kubectl annotate nodes <node> <annotation>=<value>` | Add or update an annotation on a node | `kubectl annotate nodes node-1 description='My node'` |
| `kubectl edit node <node>` | Edit the configuration of a node directly | `kubectl edit node node-1` |
| `kubectl get nodes --selector <label>=<value>` | List nodes that match a specific label | `kubectl get nodes --selector env=production` |
| `kubectl explain node` | Show the schema of the node resource | `kubectl explain node` |

## Nodes Tips

- nodeSelector
  - allows you to create a pod in a node that matches certain labels
- nodeAffinity
  - newer
- taint
  - reflects pods
  - effects
    - NoSchedule
    - PreferNoSchedule
    - NoExecute
  - operator
    - Exists
    - Equal
  - `kubectl taint nodes node-name key=value:NoSchedule`
- tolerations
  - you can schedule a pod on a tainted node with a pass
  - pod.spec.tolerations
  - remove taint `kubectl taint nodes node-name key=value:NoSchedule-`
