# Deployments

A deployment provides declarative updates to applications. It manages the rollout of changes and ensures the desired state of an application.
| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl get deployments` |List all deployments in the current namespace |`kubectl get deployments` |
|`kubectl get deployments -n <namespace>` |List all deployments in a specific namespace |`kubectl get deployments -n my-namespace` |
|`kubectl get deployments --show-labels` |List all deployments with their labels |`kubectl get deployments --show-labels` |
|`kubectl get deployments -l <label>=<value>` |List deployments with a specific label |`kubectl get deployments -l app=nginx` |
|`kubectl get deployments -o wide` |List all deployments with additional details such as selectors |`kubectl get deployments -o wide` |
|`kubectl describe deployment <deployment>` |Show detailed information about a specific deployment |`kubectl describe deployment my-deployment` |
|`kubectl create deployment <name> --image=<image>` |Create a new deployment |`kubectl create deployment my-deployment --image=nginx` |
|`kubectl scale deployment <deployment> --replicas=<number>` |Scale a deployment to a specified number of replicas |`kubectl scale deployment my-deployment --replicas=3` |
|`kubectl delete deployment <deployment>` |Delete a deployment |`kubectl delete deployment my-deployment` |

## Deployment pointers

|Pointer | Command |
|---------|----------|
|Know how to create deployment | `kubectl create deployment deploy-name --image=nginx` replicas=3|
|Generate a manifest | `kubectlkubecolor create deploy nginx-deploy --image=nginx --dry-run=client -o yaml`|
|Know how to set a new image to deployment as part of rolling update | `kubectl set image deployment deploy-name cont-name=new-image-name` replicas=3|
|Know importance of --record instruction | `kubectl set image deployment nginx nginx=nginx:1.9.1 --record` <br /> With this, <br /> `kubectl rollout history deployment nginx` <br /> will show the command used during the rollout |
|Know how to rollback a deployment | `kubectl rollout undo deployment deploy-name` |
|Be able to scale the deployment | `kubectl scale deployment deploy-name --replicas=10` |
