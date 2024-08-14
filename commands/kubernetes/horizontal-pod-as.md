# Horizontal Pod Autoscaling (HPA) Commands

The Horizontal Pod Autoscaler (HPA) is a Kubernetes resource that automatically adjusts the number of pod replicas in a deployment, replica set, or stateful set based on observed CPU utilization, memory usage, or custom metrics. The HPA ensures that your application scales up or down to meet demand, improving resource efficiency and maintaining application performance.

## Metru

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `kubectl get hpa` | List all Horizontal Pod Autoscalers in the current namespace | `kubectl get hpa` |
| `kubectl get hpa -n <namespace>` | List all HPAs in a specific namespace | `kubectl get hpa -n my-namespace` |
| `kubectl describe hpa <hpa-name>` | Show detailed information about a specific HPA | `kubectl describe hpa my-hpa` |
| `kubectl create -f <file>` | Create an HPA from a YAML or JSON file | `kubectl create -f hpa.yaml` |
| `kubectl apply -f <file>` | Apply changes to an existing HPA from a YAML or JSON file | `kubectl apply -f hpa.yaml` |
| `kubectl delete hpa <hpa-name>` | Delete an HPA | `kubectl delete hpa my-hpa` |
| `kubectl edit hpa <hpa-name>` | Edit an HPA in place | `kubectl edit hpa my-hpa` |
| `kubectl autoscale deployment <deployment-name> --min=<min-replicas> --max=<max-replicas> --cpu-percent=<percentage>` | Create or update an HPA for a deployment | `kubectl autoscale deployment my-deployment --min=2 --max=10 --cpu-percent=80` |
| `kubectl get hpa -o wide` | List all HPAs with additional details | `kubectl get hpa -o wide` |
| `kubectl get hpa -o yaml` | Get the YAML representation of all HPAs | `kubectl get hpa -o yaml` |
| `kubectl explain hpa` | Show the schema of the HPA resource | `kubectl explain hpa` |

## Metric Server

- [Install metric server](https://github.com/kubernetes-sigs/metrics-server/releases/tag/v0.7.1)
- [Helpful with seeing HPA]

## Example HPA YAML Configuration

```yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: example-hpa
  namespace: default
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: example-deployment
  minReplicas: 2
  maxReplicas: 10
  metrics:
  - type: Resource
    resource:
      name: cpu
      target:
        type: Utilization
        averageUtilization: 80
