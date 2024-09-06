# Using GitHub Registry

## Build image

- generate access token
  - Settings
  - Developer Settings
  - Personal access tokens
  - Tokens (classic)
- docker login --username <username> --password <access-token> ghcr.io
- docker build -t ghcr.io/<username>/image:tag .
- docker push ghcr.io/<username>/image:tag

## Use image in k8s manifests

```sh
  kubectl create secret docker-registry ghcr-secret \
    --docker-server=ghcr.io \
    --docker-username=<YOUR_GITHUB_USERNAME> \
    --docker-password=<YOUR_PERSONAL_ACCESS_TOKEN> \
    --docker-email=<YOUR_EMAIL>
```

```sh
apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app
  labels:
    app: my-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: my-app
  template:
    metadata:
      labels:
        app: my-app
    spec:
      containers:
      - name: my-app
        image: ghcr.io/<YOUR_GITHUB_USERNAME>/<YOUR_IMAGE_NAME>:<TAG>
        ports:
        - containerPort: 8080
      imagePullSecrets:
      - name: ghcr-secret
```
