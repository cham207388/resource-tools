# Configuration Section

## Readiness Probe

```yaml
readinessProbe:
  httpGet:
    path: /
    port: 80
  initialDelaySeconds: 5
  periodSeconds: 5
  failureThreshold: 5
---
readinessProbe:
  exec:
    command: ["ls", "/"]
---
readinessProbe:
  tcpSocket:
    port: 3306
```

[deployment.yaml](./deployment.yaml)
