# Helm Template Objects

| Object | Explanation | Example Usage |
|--------|-------------|---------------|
| `.Values` | User-defined values passed into the chart. These can be defined in a `values.yaml` file or passed in via the `--set` flag during `helm install` or `helm upgrade`. | `.Values.image.repository` |
| `.Chart` | Contains metadata about the chart, such as the name, version, and description. | `.Chart.Name`, `.Chart.Version` |
| `.Release` | Contains information about the current release, such as the name, namespace, and revision number. | `.Release.Name`, `.Release.Namespace` |
| `.Files` | Accesses non-template files in the chart. It can be used to read file contents. | `.Files.Get "config.yaml"`, `.Files.GetBytes "config.yaml"` |
| `.Capabilities` | Provides information about the Kubernetes cluster’s capabilities, such as API versions supported. | `.Capabilities.KubeVersion`, `.Capabilities.APIVersions.Has "batch/v1"` |
| `.Template` | Contains information about the template that is being rendered. | `.Template.Name` |
| `.Capabilities.HelmVersion` | Provides the version of Helm that is rendering the chart. | `.Capabilities.HelmVersion.Version` |
| `.Release.IsInstall` | Returns `true` if the current operation is an install. | `.Release.IsInstall` |
| `.Release.IsUpgrade` | Returns `true` if the current operation is an upgrade. | `.Release.IsUpgrade` |
| `.Release.Revision` | The revision number of the release. | `.Release.Revision` |
| `.Chart.AppVersion` | The version of the app that the chart installs, from `Chart.yaml`. | `.Chart.AppVersion` |
| `.Chart.Home` | The home page URL of the chart. | `.Chart.Home` |
| `.Chart.Icon` | The URL to an icon file. | `.Chart.Icon` |
| `.Chart.Sources` | A list of URLs to source code for the chart. | `.Chart.Sources` |
| `.Files.Glob` | Returns files whose names match a shell glob pattern. | `.Files.Glob "*.tpl"` |
| `.Files.Lines` | Reads a file into an array of lines. | `.Files.Lines "config.yaml"` |
| `.Files.AsSecrets` | Reads files in as Secrets. | `.Files.AsSecrets` |
| `.Files.AsConfig` | Reads files in as ConfigMaps. | `.Files.AsConfig` |
| `.Release.Service` | The service that manages the release, usually Helm. | `.Release.Service` |
| `.Release.Time` | The timestamp of the release. | `.Release.Time` |
| `.Template.BasePath` | The base path of the template that is being rendered. | `.Template.BasePath` |
| `.Capabilities.KubeVersion.GitVersion` | The Git version of Kubernetes. | `.Capabilities.KubeVersion.GitVersion` |
| `.Capabilities.KubeVersion.Major` | The major version of Kubernetes. | `.Capabilities.KubeVersion.Major` |
| `.Capabilities.KubeVersion.Minor` | The minor version of Kubernetes. | `.Capabilities.KubeVersion.Minor` |
| `.Capabilities.APIVersions` | The API versions supported by the Kubernetes cluster. | `.Capabilities.APIVersions.Has "v1"` |
| `.Capabilities.APIVersions.List` | Lists all API versions supported by the Kubernetes cluster. | `.Capabilities.APIVersions.List` |
