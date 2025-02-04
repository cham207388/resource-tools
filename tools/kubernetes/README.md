# Kubernetes Commands

- [Kubernetes docs](https://kubernetes.io/docs/home/)
- [kubectl](https://kubernetes.io/docs/reference/kubectl/)
- [Blueprints](https://github.com/aws-ia/terraform-aws-eks-blueprints)
- `kubectl proxy --port=8080` to see APIs on localhost:8080
- `kubectl proxy` to see APIs on localhost:random port
- `kubectl verb object` as in `kubectl get pod`
- `kubectl explain object` as in `kubectl explain pod` to see the fields of the object

## Table of Content

- [cluster-role-binding](./commands/cluster-role-binding.md)
- [cluster](./commands/commands/cluster.md)
- [nodes](./commands/nodes.md)
- [configuration](./commands/configuration.md)
- [pods](./commands/pods.md)
- [replicasets](./commands/replicasets)
- [deployment](./commands/deployment.md)
- [services](./commands/services.md)
- [daemonsets](./commands/daemonsets.md)
- [config-secrets](./commands/config-secrets.md)
- [persistent-volume](./commands/persistent-volume.md)
- [role-and-binding](./commands/role-and-binding.md)
- [Horizontal Pod Autoscaler](./commands/horizontal-pod-as.md)
- [Stateful Set](./commands/statefultset.md)
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

### Commands to clean put together

- `kubectl config view`
- `kubectl config use-context new-context`
- `kubectl edit -n kube-system confimap/aws-auth`

### Fargate

- `eksctl create cluster --name eks-fargate --fargate`
  - creates an eks cluster with fargate profile

- Create a tls secret for webhook

```bash
kubectl create secret tls ca-key-pair --cert=path/to/cert --key=path/to/key -n <namespace>
```

- Get the tls secret

```bash
kubectl get secret <secret-name> -n <namespace>
```

- Get the cabundle

```bash
kubectl get configmap -n kube-system extension-apiserver-authentication -o yaml | grep "client-ca-file"
```

- Get the extension-apiserver-authentication configmap

```bash
kubectl get configmap -n kube-system extension-apiserver-authentication -o yaml
```

## kubectl convert

- Install convert plugin

1. curl -LO <https://dl.k8s.io/release/$(curl -L -s <https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl-convert>
2. chmod +x kubectl-convert
3. sudo mv kubectl-convert /usr/local/bin/

- Convert a deployment to a statefulset

```bash
- kubectl convert -f <old-file-with-old-version> --output-version <new-api>
- kubectl convert -f nginx-deploy.yaml --output-version apps/v1
```
