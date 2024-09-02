# eksctl

| Command | Description | Example Usage |
|---------|-------------|---------------|
| `eksctl create cluster` | Create an EKS cluster with default settings | `eksctl create cluster --name my-cluster` |
|  | Create an EKS cluster with custom settings | `eksctl create cluster --name my-cluster --version <version> --node-type <t3.micro> --nodes 2`|
|  |Create an EKS cluster with custom settings and managed ng |`eksctl create cluster --name my-cluster --version <version> --nodegroup-name <ngname> --node-type <t3.micro> --nodes 2 --managed`|
|  | Create an EKS cluster with fargate | `eksctl create cluster --name my-cluster --fargate`|
| `eksctl delete cluster` | Delete an EKS cluster | `eksctl delete cluster --name my-cluster` |
| `eksctl get cluster` | List all EKS clusters in the current AWS account and region | `eksctl get cluster` |
| `eksctl create nodegroup` | Create a new node group within an existing cluster | `eksctl create nodegroup --cluster my-cluster --name my-nodegroup` |
| `eksctl delete nodegroup` | Delete a node group from a cluster | `eksctl delete nodegroup --cluster my-cluster --name my-nodegroup` |
| `eksctl get nodegroup` | List all node groups within a specific cluster | `eksctl get nodegroup --cluster my-cluster` |
| `eksctl scale nodegroup` | Scale the number of nodes in a node group | `eksctl scale nodegroup --cluster my-cluster --name my-nodegroup --nodes 3` |
| `eksctl upgrade cluster` | Upgrade the EKS cluster control plane to a specified version | `eksctl upgrade cluster --name my-cluster --version 1.21` |
| `eksctl upgrade nodegroup` | Upgrade the node group to a specified Kubernetes version or AMI | `eksctl upgrade nodegroup --cluster my-cluster --name my-nodegroup --kubernetes-version 1.21` |
| `eksctl utils update-kube-proxy` | Update the kube-proxy daemonset for the cluster | `eksctl utils update-kube-proxy --cluster my-cluster --approve` |
| `eksctl utils update-coredns` | Update the CoreDNS deployment in the cluster | `eksctl utils update-coredns --cluster my-cluster --approve` |
| `eksctl utils update-aws-node` | Update the aws-node daemonset in the cluster | `eksctl utils update-aws-node --cluster my-cluster --approve` |
| `eksctl utils write-kubeconfig` | Update or create the kubeconfig file for a specified cluster | `eksctl utils write-kubeconfig --cluster my-cluster` |
| `eksctl create fargateprofile` | Create a Fargate profile in the cluster for running pods on AWS Fargate | `eksctl create fargateprofile --cluster my-cluster --name my-fargate-profile --namespace my-namespace` |
| `eksctl delete fargateprofile` | Delete a Fargate profile from the cluster | `eksctl delete fargateprofile --cluster my-cluster --name my-fargate-profile` |
| `eksctl get fargateprofile` | List all Fargate profiles within a specific cluster | `eksctl get fargateprofile --cluster my-cluster` |
| `eksctl create iamidentitymapping` | Map an IAM role or user to a Kubernetes RBAC role | `eksctl create iamidentitymapping --cluster my-cluster --arn arn:aws:iam::123456789012:role/MyRole --group system:masters` |
| `eksctl delete iamidentitymapping` | Remove an IAM identity mapping from the cluster | `eksctl delete iamidentitymapping --cluster my-cluster --arn arn:aws:iam::123456789012:role/MyRole` |
| `eksctl get iamidentitymapping` | List all IAM identity mappings in a specific cluster | `eksctl get iamidentitymapping --cluster my-cluster` |
| `eksctl enable repo` | Enable a GitOps repository in the cluster | `eksctl enable repo --cluster my-cluster --git-url git@github.com:my-org/my-repo.git` |
| `eksctl enable profile` | Enable an EKS profile in the cluster | `eksctl enable profile --cluster my-cluster --git-url git@github.com:my-org/my-repo.git` |
| `eksctl create addon` | Install or update an EKS addon in the cluster | `eksctl create addon --cluster my-cluster --name vpc-cni --version latest` |
| `eksctl delete addon` | Delete an addon from the cluster | `eksctl delete addon --cluster my-cluster --name vpc-cni` |
| `eksctl get addon` | List all installed addons in the cluster | `eksctl get addon --cluster my-cluster` |
