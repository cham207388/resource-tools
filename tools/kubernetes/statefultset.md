# StatefulSet

A StatefulSet is a Kubernetes resource used for managing stateful applications that require persistent storage and stable network identities. Unlike a Deployment, a StatefulSet provides guarantees about the ordering and uniqueness of pods, making it ideal for applications like databases or distributed systems.

## StatefulSet Commands

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `kubectl get statefulsets` | List all StatefulSets in the current namespace | `kubectl get statefulsets` |
| `kubectl get statefulsets -n <namespace>` | List all StatefulSets in a specific namespace | `kubectl get statefulsets -n my-namespace` |
| `kubectl describe statefulset <statefulset-name>` | Show detailed information about a specific StatefulSet | `kubectl describe statefulset redis` |
| `kubectl create -f <file>` | Create a StatefulSet from a YAML or JSON file | `kubectl create -f statefulset.yaml` |
| `kubectl apply -f <file>` | Apply changes to a StatefulSet from a YAML or JSON file | `kubectl apply -f statefulset.yaml` |
| `kubectl delete statefulset <statefulset-name>` | Delete a StatefulSet | `kubectl delete statefulset redis` |
| `kubectl scale statefulset <statefulset-name> --replicas=<number>` | Scale the number of pods in a StatefulSet | `kubectl scale statefulset redis --replicas=5` |
| `kubectl get pods -l app=<label>` | List all pods managed by a StatefulSet using a label selector | `kubectl get pods -l app=redis` |
| `kubectl rollout status statefulset/<statefulset-name>` | Monitor the status of a StatefulSet rollout | `kubectl rollout status statefulset/redis` |

## Example Config

```bash
apiVersion: apps/v1
kind: StatefulSet
metadata:
  name: redis
  labels:
    app: redis
spec:
  serviceName: "redis"
  replicas: 3
  selector:
    matchLabels:
      app: redis
  template:
    metadata:
      labels:
        app: redis
    spec:
      containers:
      - name: redis
        image: redis:6.0
        ports:
        - containerPort: 6379
          name: redis
        volumeMounts:
        - name: data
          mountPath: /data
  volumeClaimTemplates:

- metadata:
      name: data
    spec:
      accessModes: ["ReadWriteOnce"]
      resources:
        requests:
          storage: 1Gi
```
