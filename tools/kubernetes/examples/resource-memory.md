# Resource - Memory

- 1Gi (Gibibyte) = 1073741824 bytes =
- 1Mi (Mebibyte) = 1048576 bytes
- 1Ki (Kibibyte) = 1024 bytes
- 1G (Gigabyte) = 1000000000 bytes
- 1M (Megabyte) = 1000000 bytes
- 1K (Kilobyte) = 1000 bytes

## LimitRange

- LimitRange is a resource that limits the amount of resources that can be allocated to a pod.
- It can be used to limit the amount of memory that can be allocated to a pod.
- It can be used to limit the amount of CPU that can be allocated to a pod.

example:

```yaml
apiVersion: v1
kind: LimitRange
metadata:
  name: mem-cpu-limit-range
spec:
  limits:
    - default:
        memory: 1Gi
        cpu: 1
    defaultRequest:
        memory: 1Gi
        cpu: 1
    max:
        memory: 2Gi
        cpu: 2
    min:
        memory: 512Mi
        cpu: 0.5
    type: Container
```

## Resource Quota

- Resource Quota is a resource that limits the amount of resources that can be allocated to a namespace.
- It can be used to limit the amount of memory that can be allocated to a namespace.
- It can be used to limit the amount of CPU that can be allocated to a namespace.

example:

```yaml
apiVersion: v1
kind: ResourceQuota
metadata:
  name: mem-cpu-quota
spec:
  hard:
    requests.memory: 1Gi
    requests.cpu: 4
    limits.memory: 2Gi
    limits.cpu: 10
```
