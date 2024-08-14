# Chart Development

Helm charts can be developed and customized to meet specific requirements.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `helm create <chart-name>` | Create a new chart with a sample structure | `helm create my-chart` |
| `helm package <chart-path>` | Package a chart directory into a chart archive | `helm package ./my-chart` |
| `helm lint <chart-path>` | Check a chart for issues | `helm lint ./my-chart` |
| `helm template <chart>` | Render chart templates locally and display the output | `helm template stable/nginx` |
| `helm dependency update` | Update charts/Chart.yaml dependencies. I use this to add mysql dependency | `helm dependency update ./my-chart` |
| `helm dependency build` | Rebuild the charts/ directory based on the Chart.lock file | `helm dependency build ./my-chart` |
