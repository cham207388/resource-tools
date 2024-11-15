# Notes

## Making the ingress work

- [link](https://github.com/cham207388/docker-development-youtube-series/tree/master/kubernetes/ingress/controller/nginx)

- create cluster
  - `kind create cluster --name nginx-ingress --image kindest/node:v1.30.6`
- deploy ingress controller
  - `kubectl create namespace ingress-nginx`
  - `kubectl apply -f nginx-ingress.1.11.3.yaml`
  - `kubectl -n ingress-nginx get pods`
- deploy manifests
- execute
  - linux: `export hostip=$(hostname  -I | cut -f1 -d' ')`
  - macbook: `export hostip=$(ifconfig | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | head -n 1)`
- deploy ingress resource
  - `envsubst < ingress.yaml | kubectl apply -f - --namespace default`
- get url
  - `webserver.$hostip.nip.io`
  - or
  - use my domain and create an a record: ingress.alhagiebaicham.com

## Port forwarding

Can't forward to ports below 1024 without permission

```bash
kubectl -n ingress-nginx port-forward svc/ingress-nginx-controller 8443:443
```

## to create nginx-controller yaml

- `kubectl get nodes` to get k8s version
- [versions](https://github.com/kubernetes/ingress-nginx)

based on my k8s version,

```bash
CHART_VERSION="4.11.3"
APP_VERSION="1.11.3"
```

get the manifest

```bash
helm template ingress-nginx ingress-nginx \
--repo https://kubernetes.github.io/ingress-nginx \
--version ${CHART_VERSION} \
--namespace ingress-nginx \
> ./controller/nginx-ingress.${APP_VERSION}.yaml
```

or deploy straight via helm

```bash
helm install ingress-nginx ingress-nginx \
--repo https://kubernetes.github.io/ingress-nginx \
--version 4.11.3 \
--namespace ingress-nginx
```
