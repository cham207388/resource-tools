# Helm Basics

Helm is a tool that streamlines the installation and management of Kubernetes applications. It uses a packaging format called charts.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `helm version` | Display the Helm client and server version information | `helm version` |
| `helm help` | Show help for Helm commands | `helm help` |
| `helm list` | List all deployed releases | `helm list` |
| `helm list --all-namespaces` | List all releases across all namespaces | `helm list --all-namespaces` |

## Object

| Command      | Description                                                                     |
|--------------|---------------------------------------------------------------------------------|
| `completion` | generate autocompletion scripts for the specified shell                         |
| `create`     | create a new chart with the given name                                          |
| `dependency` | manage a chart's dependencies                                                   |
| `env`        | helm client environment information                                             |
| `get`        | download extended information of a named release                                |
| `help`       | Help about any command                                                          |
| `history`    | fetch release history                                                           |
| `install`    | install a chart                                                                 |
| `lint`       | examine a chart for possible issues                                             |
| `list`       | list releases                                                                   |
| `package`    | package a chart directory into a chart archive                                  |
| `plugin`     | install, list, or uninstall Helm plugins                                        |
| `pull`       | download a chart from a repository and (optionally) unpack it in local directory|
| `push`       | push a chart to remote                                                          |
| `registry`   | login to or logout from a registry                                              |
| `repo`       | add, list, remove, update, and index chart repositories                         |
| `rollback`   | roll back a release to a previous revision                                      |
| `search`     | search for a keyword in charts                                                  |
| `show`       | show information of a chart                                                     |
| `status`     | display the status of the named release                                         |
| `template`   | locally render templates                                                        |
| `test`       | run tests for a release                                                         |
| `uninstall`  | uninstall a release                                                             |
| `upgrade`    | upgrade a release                                                               |
| `verify`     | verify that a chart at the given path has been signed and is valid              |
| `version`    | print the client version information                                            |
