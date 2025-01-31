# Config

Commands for Configuring and Switching Between Kubernetes Clusters

## Commands for Configuring and Switching Between Kubernetes Clusters

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `kubectl config get-contexts` | List all contexts in your kubeconfig file | `kubectl config get-contexts` |
| `kubectl config get-users` | List all users | `kubectl config get-users` |
| `kubectl config get-clusters` | List all clusters | `kubectl config get-clusters` |
| `kubectl config view` | Verify the merged configuration | `kubectl config view` <br> `kubectl config --kubeconfig=/root/my-kube-config current-context`|
| `kubectl config use-context <context_name>` | Switch between contexts in the merged configuration | `kubectl config use-context minikube`|
| `export KUBECONFIG=/path/kubernetes/config` | Change the current K8s context configuration file | `kubectl config --kubeconfig=/root/my-kube-config use-context research`|
| `export KUBECONFIG=~/.kube/config_minikube:~/.kube/config_eks:~/.kube/config_doks` | Set the `KUBECONFIG` environment variable to specify multiple configuration files | `export KUBECONFIG=~/.kube/config_minikube:~/.kube/config_eks:~/.kube/config_doks` |
| `kubectl api-resources --namespaced=true` | List all namespaced API resources | `kubectl api-resources --namespaced=true` |
| `kubectl api-resources --namespaced=false` | List all cluster-wide API resources | `kubectl api-resources --namespaced=false` |

### Minikube

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `minikube start` | Start Minikube and configure `kubectl` | `minikube start` |
| `minikube delete` | Delete minikube | `minikube delete` |
| `minikube start --driver=docker` | Start minikube | `minikube start --driver=docker` |

### AWS EKS

Once cluster is created, execute
`aws eks --region us-east-1 update-kubeconfig --name <cluster-name>`

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `aws eks --region <region> update-kubeconfig --name <cluster_name>` | Configure kubeconfig for AWS EKS | `aws eks --region us-east-2 update-kubeconfig --name eksdemo` |

### Digital Ocean

1. download config file
2. /kplabs-k8s-kubeconfig.yaml
3. - `export KUBECONFIG=~/.kube/config:~/.kube/do-kubeconfig`
     `kubectl config view --merge --flatten > ~/.kube/config`
4. `kubectl config use-context do-nyc1-kplabs-k8s`

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `doctl kubernetes cluster kubeconfig save <cluster_name>` | Configure kubeconfig for DigitalOcean Kubernetes | `doctl kubernetes cluster kubeconfig save my-doks-cluster` |
