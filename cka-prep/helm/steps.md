# Helm

## Install Wordpress

- `helm repo add repo-name` if not available on your system
  - `helm repo remove repo-name`
- `helm install release-name bitnami/chart-name`
  - e.g. `helm install wordpress bitnami/wordpress`
- `helm uninstall release-name`
- when ready, access using the ip of loadbalancer
