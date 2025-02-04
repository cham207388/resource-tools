# Admission Controllers

## Validating Admission Controller

- Validates the request and rejects it if it doesn't meet the criteria.
- Can be used to enforce policies on the resources.

## Mutating Admission Controller

- Validates the request and mutates the resource if it meets the criteria.
- Can be used to enforce policies on the resources.

- kubectl exec -it -n kube-system kube-apiserver-kind-control-plane -- ls /etc/kubernetes/manifests/kube-apiserver.yaml
