# ConfigMap

## Example

### Imperative

- from-literal
- from-file

### Declarative

```yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: my-configmap
data:
  my-key: my-value
```

## Usage

with **envFrom**: and inject all key-value pairs in the ConfigMap as environment variables

example:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
    - name: my-container
      image: my-image
      envFrom:
        - configMapRef:
            name: my-configmap
```

with **env**: and inject every key-value pair in the ConfigMap as an environment variable

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
    - name: my-container
      image: my-image
      env:
        - name: my-key
          valueFrom:
            configMapKeyRef:
              name: my-configmap
              key: my-key
        - name: my-key-2
          valueFrom:
            configMapKeyRef:
              name: my-configmap
              key: my-key-2
```

with **volume:** and mount the ConfigMap as a file or directory

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: my-pod
spec:
  containers:
    - name: my-container
      image: my-image
      volumeMounts:
        - name: my-configmap
          mountPath: /etc/my-configmap
  volumes:
    - name: my-configmap
      configMap:
        name: my-configmap
```
