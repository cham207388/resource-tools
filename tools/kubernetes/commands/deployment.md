# Deployments

A deployment provides declarative updates to applications. It manages the rollout of changes and ensures the desired state of an application.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
|`kubectl create deployment <name> --image=<image>` |Create a new deployment |`kubectl create deployment my-deployment --image=nginx` |
|`kubectl scale deployment <deployment> --replicas=<number>` |Scale a deployment to a specified number of replicas |`kubectl scale deployment my-deployment --replicas=3` |
|`kubectl delete deployment <deployment>` |Delete a deployment |`kubectl delete deployment my-deployment` |

Below is an extensive list of Kubernetes commands related to deployments, along with explanations and example usage.

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `kubectl create deployment` | Creates a new deployment. | `kubectl create deployment nginx --image=nginx` |
| `kubectl get deployments` | Lists all deployments in the current namespace. | `kubectl get deployments` <hr> `kubectl get deployments -n my-namespace` <hr> `kubectl get deployments --show-labels` <hr> `kubectl get deployments -o wide` <hr> `kubectl get deployments -o yaml`|
| `kubectl describe deployment` | Provides detailed information about a specific deployment. | `kubectl describe deployment nginx` |
| `kubectl scale deployment` | Scales a deployment to a specified number of replicas. | `kubectl scale deployment nginx --replicas=3` |
| `kubectl edit deployment` | Opens the deployment manifest in the default editor for live editing. | `kubectl edit deployment nginx` |
| `kubectl delete deployment` | Deletes a deployment. | `kubectl delete deployment nginx` |
| `kubectl rollout status deployment` | Shows the rollout status of a deployment. | `kubectl rollout status deployment nginx` |
| `kubectl rollout history deployment` | Displays the rollout history of a deployment. | `kubectl rollout history deployment nginx` |
| `kubectl rollout undo deployment` | Rolls back a deployment to the previous revision. | `kubectl rollout undo deployment nginx` |
| `kubectl rollout undo deployment --to-revision` | Rolls back a deployment to a specific revision. | `kubectl rollout undo deployment nginx --to-revision=2` |
| `kubectl set image deployment` | Updates the container image for a deployment. | `kubectl set image deployment nginx nginx=nginx:1.19` |
| `kubectl autoscale deployment` | Automatically scales a deployment based on CPU utilization or other metrics. | `kubectl autoscale deployment nginx --min=2 --max=10 --cpu-percent=80` |
| `kubectl get pods -l` | Lists pods filtered by label. | `kubectl get pods -l app=nginx` |
| `kubectl logs deployment/` | Retrieves logs from the pods managed by the deployment. | `kubectl logs deployment/nginx` |
| `kubectl exec -it <pod-name> -- /bin/sh` | Executes a command in a container within a pod. | `kubectl exec -it nginx-pod -- /bin/sh` |
| `kubectl port-forward deployment/` | Forwards one or more local ports to a pod. | `kubectl port-forward deployment/nginx 8080:80` |
| `kubectl patch deployment` | Updates specific fields of a deployment. | `kubectl patch deployment nginx -p '{"spec":{"template":{"spec":{"containers":[{"name":"nginx","image":"nginx:1.19"}]}}}}'` |
| `kubectl get rs` | Lists all replica sets, which are managed by deployments. | `kubectl get rs` |
| `kubectl describe rs` | Provides detailed information about a specific replica set. | `kubectl describe rs nginx-12345` |
| `kubectl get events --sort-by=.metadata.creationTimestamp` | Lists events sorted by creation time, useful for troubleshooting. | `kubectl get events --sort-by=.metadata.creationTimestamp` |
| `kubectl top pod` | Displays resource usage (CPU, memory) for pods. | `kubectl top pod` |
| `kubectl top node` | Displays resource usage (CPU, memory) for nodes. | `kubectl top node` |
| `kubectl get deployment -o yaml` | Outputs the deployment configuration in YAML format. | `kubectl get deployment nginx -o yaml` |
| `kubectl get deployment -o json` | Outputs the deployment configuration in JSON format. | `kubectl get deployment nginx -o json` |
| `kubectl label deployment` | Adds or updates labels on a deployment. | `kubectl label deployment nginx env=prod` |
| `kubectl annotate deployment` | Adds or updates annotations on a deployment. | `kubectl annotate deployment nginx description="Production Nginx Deployment"` |
| `kubectl rollout restart deployment` | Restarts a deployment by rolling out a new revision. | `kubectl rollout restart deployment nginx` |
| `kubectl get deployment --show-labels` | Lists deployments with their labels. | `kubectl get deployment --show-labels` |
| `kubectl get deployment -w` | Watches for changes in the deployment status. | `kubectl get deployment nginx -w` |
| `kubectl get deployment -o wide` | Lists deployments with additional details. | `kubectl get deployment -o wide` |
| `kubectl get deployment --all-namespaces` | Lists deployments across all namespaces. | `kubectl get deployment --all-namespaces` |
| `kubectl get deployment -n <namespace>` | Lists deployments in a specific namespace. | `kubectl get deployment -n default` |
| `kubectl explain deployment` | Provides documentation for the deployment resource. | `kubectl explain deployment` |
| `kubectl rollout pause deployment` | Pauses a deployment rollout. | `kubectl rollout pause deployment nginx` |
| `kubectl rollout resume deployment` | Resumes a paused deployment rollout. | `kubectl rollout resume deployment nginx` |
| `kubectl get deployment -o custom-columns=NAME:.metadata.name,REPLICAS:.spec.replicas` | Custom columns output for deployments. | `kubectl get deployment -o custom-columns=NAME:.metadata.name,REPLICAS:.spec.replicas` |
| `kubectl get deployment -o jsonpath='{.items[*].metadata.name}'` | Extracts specific fields using JSONPath. | `kubectl get deployment -o jsonpath='{.items[*].metadata.name}'` |
| `kubectl get deployment -o go-template='{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'` | Uses Go templates to format output. | `kubectl get deployment -o go-template='{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'` |
| `kubectl get deployment -o yaml --export` | Exports the deployment configuration in YAML format (deprecated in newer versions). | `kubectl get deployment nginx -o yaml --export` |
| `kubectl get deployment -o json --export` | Exports the deployment configuration in JSON format (deprecated in newer versions). | `kubectl get deployment nginx -o json --export` |
| `kubectl get deployment -o yaml --dry-run=client` | Simulates creating a deployment and outputs the YAML. | `kubectl create deployment nginx --image=nginx --dry-run=client -o yaml` |
| `kubectl get deployment -o json --dry-run=client` | Simulates creating a deployment and outputs the JSON. | `kubectl create deployment nginx --image=nginx --dry-run=client -o json` |
| `kubectl get deployment -o yaml --dry-run=server` | Simulates creating a deployment and outputs the YAML (server-side). | `kubectl create deployment nginx --image=nginx --dry-run=server -o yaml` |
| `kubectl get deployment -o json --dry-run=server` | Simulates creating a deployment and outputs the JSON (server-side). | `kubectl create deployment nginx --image=nginx --dry-run=server -o json` |
| `kubectl get deployment -o yaml --dry-run=client -o yaml` | Simulates creating a deployment and outputs the YAML (client-side). | `kubectl create deployment nginx --image=nginx --dry-run=client -o yaml` |
| `kubectl get deployment -o json --dry-run=client -o json` | Simulates creating a deployment and outputs the JSON (client-side). | `kubectl create deployment nginx --image=nginx --dry-run=client -o json` |
| `kubectl get deployment -o yaml --dry-run=server -o yaml` | Simulates creating a deployment and outputs the YAML (server-side). | `kubectl create deployment nginx --image=nginx --dry-run=server -o yaml` |
| `kubectl get deployment -o json --dry-run=server -o json` | Simulates creating a deployment and outputs the JSON (server-side). | `kubectl create deployment nginx --image=nginx --dry-run=server -o json` |

## Notes

- **Namespace**: Most commands assume the `default` namespace unless specified otherwise. Use the `-n` flag to specify a different namespace.
- **Dry Run**: The `--dry-run` flag is useful for testing and validating configurations without actually applying them.
- **Export**: The `--export` flag is deprecated in newer versions of Kubernetes, so it's recommended to use `--dry-run` instead.

These commands should cover most of the common tasks you'll encounter when managing Kubernetes deployments. Let me know if you need further clarification or additional commands!

## Deployment pointers

|Pointer | Command |
|---------|----------|
|Know how to create deployment | `kubectl create deployment deploy-name --image=nginx` replicas=3|
|Generate a manifest | `kubectl create deploy nginx-deploy --image=nginx --dry-run=client -o yaml`|
|Know how to set a new image to deployment as part of rolling update | `kubectl set image deployment deploy-name cont-name=new-image-name` replicas=3|
|Know importance of --record instruction | `kubectl set image deployment nginx nginx=nginx:1.9.1 --record` <br /> With this, <br /> `kubectl rollout history deployment nginx` <br /> will show the command used during the rollout |
|Know how to rollback a deployment | `kubectl rollout undo deployment deploy-name` |
|Be able to scale the deployment | `kubectl scale deployment deploy-name --replicas=10` |
