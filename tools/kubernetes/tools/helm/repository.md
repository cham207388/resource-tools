# Chart Repositories

Chart repositories contain packaged charts that can be shared and reused.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `helm repo add <repo-name> <repo-url>` | Add a chart repository | `helm repo add stable https://charts.helm.sh/stable` |
| `helm repo list` | List all chart repositories | `helm repo list` |
| `helm repo update` | Update information of available charts locally from chart repositories | `helm repo update` |
| `helm repo remove <repo-name>` | Remove a chart repository | `helm repo remove stable` |
