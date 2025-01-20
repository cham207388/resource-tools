# Secrets

## Example

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: my-secret
data:
  my-key: encoded-value
```

## Usage

with **env**: and inject every key-value pair in the Secret as an environment variable

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
            secretKeyRef:
              name: my-secret
              key: my-key
```

with **volume:** and mount the Secret as a file or directory

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
        - name: my-secret
          mountPath: /etc/my-secret
  volumes:
    - name: my-secret
      secret:
        secretName: my-secret
```

with **envFrom:** and inject all key-value pairs in the Secret as environment variables

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
        - secretRef:
            name: my-secret
```
