# Miscellaneous

Other useful Helm commands for various tasks.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `helm env` | Display Helm client environment information | `helm env` |
| `helm completion <shell>` | Generate autocompletions script for the specified shell (bash, zsh, etc.) | `helm completion bash` |
| `helm test <release-name>` | Run tests for a release | `helm test my-nginx` |
| `helm diff upgrade <release-name> <chart>` | Show a diff explaining what a helm upgrade would change | `helm diff upgrade my-nginx stable/nginx` |
| `helm upgrade --namespace default <release-name> <chart> --set auth.rootPassword=$ROOT_PASSWORD` | Set root password of a release. --namespace default not required if in default ns | `helm upgrade --namespace default mysql bitnami/mysql --set auth.rootPassword=$ROOT_PASSWORD` |
| `helm upgrade --namespace default <release-name> <chart> --values path/to/values.yaml` | Set root password of a release from a values.yaml | `helm upgrade --namespace default mysqldb bitnami/mysql --values path/to/values.yaml` |
| `helm upgrade <release-name> <chart> --values --reuse-values` | upgrade and reuse values from previous file config | `helm upgrade mysqldb bitnami/mysql --reuse-values` |

This list of Helm commands should help you get started with managing Kubernetes applications using Helm, from basic operations to more advanced tasks.

## Some Commands use in learning helm

| Command | Explanation |
|---------|-------------|
| `helm install mysqldb bitnami/mysql --values mysql-values.yaml --dry-run` | install dry run to show what will happen |
| `helm upgrade mysqldb bitnami/mysql --values mysql-values.yaml --dry-run` | upgrade dry run to show what will happen. need to connect to k8 cluster |
| `helm template mysqldb bitnami/mysql --values mysql-values.yaml` | similar to upgrade dry run and does not need to connect to k8 cluster |
