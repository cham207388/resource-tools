# Helm Commands

[helm docs](https://helm.sh/docs/)

## Work with helm

    1. helm repo add bitnami https://charts.bitnami.com/bitnami
        - `helm repo ls`
          - list repos
        - `helm search repo bitnami`
          - search for charts
        - `helm repo rm bitnami`
          - removes bitnami repo
    2. `helm create library-backend`
        - creates a local helm chart from configs or you can edit configs
    3. `helm install library-backend library-backend/`
        - uploads the chart into the k8s
      -. `helm install library-backend library-backend/ --dry-run --debug | more`
          - debugging before installation
    4. `helm dependency update library-backend/`
        - update dependencies if there are any
    5. `helm uninstall library-backend`
        - uninstall the chart

## Install a Chart

- Once a repo is added, you can install a chart from the repo
- `helm install **your-chart-name** bitnami/mysql`
- `helm uninstall **your-chart-name**`
- `helm list`

## Table of Content

- [Basics](./basics.md)
- [Development](./development.md)
- [Deployment](./deployment.md)
- [Examples](./example.md)
- [Management](./management.md)
- [Miscellaneous](./miscellaneous.md)
- [Plugins](./plugins.md)
- [Releases](./releases.md)
- [Repository](./repository.md)
- [Template Objects](./template-objects.md)
