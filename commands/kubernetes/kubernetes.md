# Kubernetes Commands

- [Kubernetes docs](https://kubernetes.io/docs/home/)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/)
- `kubectl proxy --port=8080`
  - see APIs on localhost:8080
- `kubectl verb object` as in `kubectl get pod`

## Table of Content

- [cluster-role-binding](./cluster-role-binding.md)
- [cluster](./cluster.md)
- [nodes](./nodes.md)
- [configuration](./configuration.md)
- [pods](./pods.md)
- [replicasets](./replicasets)
- [deployment](./deployment.md)
- [services](./services.md)
- [daemonsets](./daemonsets.md)
- [config-secrets](./config-secrets.md)
- [persistent-volume](./persistent-volume.md)
- [role-and-binding](./role-and-binding.md)
- [Horizontal Pod Autoscaler](./horizontal-pod-as.md)
- [Stateful Set](./statefultset.md)

## Logs and Monitoring

- --field-selector
- kubectl get events
- cAdvisor
- journalctl
- systemctl
