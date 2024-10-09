# Kind Cluster

- [Docker image](https://hub.docker.com/r/kindest/node/tags)

- `kubectl port-forward svc/nginx-service 8080:80`

- [cloud-provide-kind](https://github.com/kubernetes-sigs/cloud-provider-kind?tab=readme-ov-file)

## Cluster Config

- [Cluster Config](cluster-config-ip.yaml)
  - `kind create cluster --config cluster-config-ip.yaml`
  - `kind delete cluster --name kind`
  - [add metrics server](https://maggnus.com/install-metrics-server-on-the-kind-kubernetes-cluster-12b0a5faf94a)

- `kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.6.2/components.yaml`