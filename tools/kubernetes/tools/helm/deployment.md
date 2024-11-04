# Chart Deployment

Deploy charts to your Kubernetes cluster to manage applications.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `helm install <release-name> <chart>` | Install a chart to create a release | `helm install my-nginx stable/nginx` |
| `helm install <release-name> <chart> --namespace <namespace>` | Install a chart in a specific namespace | `helm install my-nginx stable/nginx --namespace my-namespace` |
| `helm upgrade <release-name> <chart>` | Upgrade a release to a new version of a chart | `helm upgrade my-nginx stable/nginx` |
| `helm rollback <release-name> <revision>` | Roll back a release to a previous revision | `helm rollback my-nginx 1` |
| `helm uninstall <release-name>` | Uninstall a release | `helm uninstall my-nginx` |
| `helm uninstall <release-name> --keep-history` | Uninstall a release but keep the history like secrets etc. | `helm uninstall my-nginx --keep-history` |
| `helm history <release-name>` | Show the history of a release | `helm history my-nginx` |
| `helm status <release-name>` | Show the status of a release | `helm status my-nginx` |
| `helm pull --untar <chart>` | Download and unpack a chart | `helm pull --untar bitnami/nginx` |
