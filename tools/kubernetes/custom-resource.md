# Custom Resource Definitions

- List all crds

```bash
kubectl get crds
```

## Example

```yaml
apiVersion: apiextensions.k8s.io/v1
kind: CustomResourceDefinition
metadata:
  name: internals.datasets.kodekloud.com 
spec:
  group: datasets.kodekloud.com
  versions:
    - name: v1
      served: true
      storage: true
      schema:
        openAPIV3Schema:
          type: object
          properties:
            spec:
              type: object
              properties:
                internalLoad:
                  type: string
                range:
                  type: integer
                percentage:
                  type: string
  scope: Namespaced 
  names:
    plural: internals
    singular: internal
    kind: Internal
    shortNames:
    - int

---
apiVersion: datasets.kodekloud.com/v1
kind: Internal
metadata:
  name: internal-space
  namespace: default
spec:
  internalLoad: "high"
  range: 80
  percentage: "50"
```

## Controllers

- [controller-manager](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-controller-manager/)
- [github](https://github.com/kubernetes/sample-controller)

## Operators

[operator hub](https://operatorhub.io/)
