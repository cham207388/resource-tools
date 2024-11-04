# Chart Management

Charts are Helm packages that contain pre-configured Kubernetes resources.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `helm search hub <keyword>` | Search for charts in the Helm Hub | `helm search hub nginx` |
| `helm search repo <keyword>` | Search for charts in the local chart repositories | `helm search repo nginx` |
| `helm fetch <chart>` | Download a chart to your local directory | `helm fetch stable/nginx` |
| `helm show chart <chart>` | Show the chart's definition | `helm show chart stable/nginx` |
| `helm show values <chart>` | Show the chart's default values | `helm show values stable/nginx` |
| `helm show readme <chart>` | Show the chart's README | `helm show readme stable/nginx` |
| `helm show all <chart>` | Show all information about a chart | `helm show all stable/nginx` |
