# Notes

## Making the ingress work

- [link](https://github.com/cham207388/docker-development-youtube-series/tree/master/kubernetes/ingress/controller/nginx)

- create cluster
  - execute `../tools/kind/create-kind.sh script`
- deploy the manifests including the ingress-resource
  - execute `./deploy.sh`

## Port forwarding

Can't forward to ports below 1024 without permission

```bash
kubectl -n ingress-nginx port-forward svc/ingress-nginx-controller 8443:443
```

## Miscellaneous

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
