# Taints and Tolerations

## Taints

- Taints are used to mark a node as unschedulable.
- Taints are used to prevent pods from being scheduled to a node.
- Taints are used to specify the scheduling constraints for a pod.

Taint are set on a node

```bash
kubectl taint nodes <node-name> key=value:effect
```

Effects are:

- NoSchedule: Do not schedule pods on the node.
- PreferNoSchedule: Do not schedule pods on the node, but prefer to schedule them elsewhere.
- NoExecute: Do not schedule pods on the node, and evict any pods that are already running on the node.

Toleration are set on a pod

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
    - name: nginx
      image: nginx
  tolerations:
    - key: "key"
      operator: "Equal"
      value: "value"
      effect: "NoSchedule"
```

## Node Selector

- Node Selector is used to select a node based on labels.
- Node Selector is used to specify the node on which a pod should be scheduled.

```bash
kubectl label nodes <node-name> <label-key>=<label-value>
```

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
    - name: nginx
      image: nginx
  nodeSelector:
    label-key: "label-value"

```

## Node Affinity

- Node Affinity is used to specify the node on which a pod should be scheduled.

### Types

- requiredDuringSchedulingIgnoredDuringExecution
  - The pod will not be scheduled if the node does not have the label.
- preferredDuringSchedulingIgnoredDuringExecution:
  - The pod will be scheduled to the node if it has the label.
- requiredDuringSchedulingRequiredDuringExecution: 
  - The pod will not be scheduled if the node does not have the label.
  - The pod will be evicted if the node does not have the label.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
    - name: nginx
      image: nginx
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
          - matchExpressions:
              - key: "label-key"
                operator: "In"
                values:
                  - "label-value"
```

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
    - name: nginx
      image: nginx
  affinity:
    nodeAffinity:
      requiredDuringSchedulingIgnoredDuringExecution:
        nodeSelectorTerms:
          - matchExpressions:
              - key: "label-key"
                operator: "Exists"
```
