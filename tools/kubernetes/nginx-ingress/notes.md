# Notes

## Making the ingress work

- [link](https://github.com/cham207388/docker-development-youtube-series/tree/master/kubernetes/ingress/controller/nginx)

- set the environment varibales
  - CHART_VERSION
  - APP_VERSION

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

```bash
helm template ingress-nginx ingress-nginx \
--repo https://kubernetes.github.io/ingress-nginx \
--version ${CHART_VERSION} \
--namespace ingress-nginx \
> ./controller/nginx-ingress.${APP_VERSION}.yaml
```
