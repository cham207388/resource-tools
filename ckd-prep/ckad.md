# CKAD Exercise

## Core Concepts

Some commands to refresh

- `kubectl run messaging --image=redis:alpine -l tier=msg`
- `kubectl create deployment redis --image=redis:alpine --replicas=1`
- `kubectl expose deployment redis --name=redis --port=6379 --target-port=6379`

```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: redis-access
  namespace: default
spec:
  podSelector:
    matchLabels:
       app: redis
  policyTypes:
  - Ingress
  ingress:
  - from:
    - podSelector:
        matchLabels:
          access: redis
    ports:
     - protocol: TCP
       port: 6379
```
