# Kubernetes Commands

- [Kubernetes docs](https://kubernetes.io/docs/home/)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/)
- [Blueprints](https://github.com/aws-ia/terraform-aws-eks-blueprints)
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
- [Ingress]
- [Network Policy]

## Logs and Monitoring

- --field-selector
- kubectl get events
- cAdvisor
- journalctl
- systemctl

## Accessing Service

- execute `minikube service backend-service`

- If the above does not work,
      - `kubectl port-forward service/backend-service 8000:8000`
        - port fowarding access on localhost. Something to do with docker darwin.
      - `127.0.0.1:8000`
