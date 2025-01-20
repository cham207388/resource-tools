# ConfigMaps and Secrets

ConfigMaps and Secrets are objects used to provide configuration information and sensitive data (e.g., passwords) to pods.

## Commands

|Command |Explanation |Example Usage |
|---------|-------------|---------------|
|`kubectl get configmaps` |List all ConfigMaps in the current namespace |`kubectl get configmaps` |
|`kubectl get configmaps -n <namespace>` |List all ConfigMaps in a specific namespace |`kubectl get configmaps -n my-namespace` |
|`kubectl get configmaps --show-labels` |List all ConfigMaps with their labels |`kubectl get configmaps --show-labels` |
|`kubectl get configmaps -l <label>=<value>` |List ConfigMaps with a specific label |`kubectl get configmaps -l app=nginx` |
|`kubectl describe configmap <configmap>` |Show detailed information about a specific ConfigMap |`kubectl describe configmap my-configmap` |
|`kubectl create configmap <name> --from-literal=<key>=<value>` |Create a ConfigMap from literal values |`kubectl create configmap my-configmap --from-literal=key=value` |
|`kubectl delete configmap <configmap>` |Delete a ConfigMap |`kubectl delete configmap my-configmap` |
|`kubectl get secrets` |List all secrets in the current namespace |`kubectl get secrets` |
|`kubectl get secrets -n <namespace>` |List all secrets in a specific namespace |`kubectl get secrets -n my-namespace` |
|`kubectl get secrets --show-labels` |List all secrets with their labels |`kubectl get secrets --show-labels` |
|`kubectl get secrets -l <label>=<value>` |List secrets with a specific label |`kubectl get secrets -l app=nginx` |
|`kubectl describe secret <secret>` |Show detailed information about a specific secret |`kubectl describe secret my-secret` |
|`kubectl create secret generic <name> --from-literal=<key>=<value>` |Create a generic secret from literal values |`kubectl create secret generic my-secret --from-literal=key=value` |
|`kubectl delete secret <secret>` |Delete a secret |`kubectl delete secret my-secret` |

## ConfigMaps


## Encode

`echo -n 'plain-value' | base64`

## Decode

    `echo -n encoded-value | base64 --decode`

## Encrypting Secrets
