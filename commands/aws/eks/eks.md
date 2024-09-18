# eksctl

| Command | Description | Example Usage |
|---------|-------------|---------------|
| `eksctl create cluster` | Create an EKS cluster with default settings | `eksctl create cluster --name my-cluster` |
|  | Create an EKS cluster with custom settings | `eksctl create cluster --name my-cluster --version <version> --node-type t3.large --nodes 2`|
|  | Create an EKS cluster with custom settings and managed ng |`eksctl create cluster --name my-cluster --version <version> --nodegroup-name <ngname> --node-type t3.large --nodes 2 --managed`|
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
| `aws eks list-clusters` | Lists all EKS clusters in your account. | `aws eks list-clusters --region region-name` |
| `aws eks describe-cluster` | Describes a specific EKS cluster. | `aws eks describe-cluster --name my-cluster` |
| `aws eks list-nodegroups` | Lists the node groups associated with a specific EKS cluster. | `aws eks list-nodegroups --cluster-name my-cluster` |
| `aws eks describe-nodegroup` | Describes a specific node group in an EKS cluster. | `aws eks describe-nodegroup --cluster-name my-cluster --nodegroup-name my-nodegroup` |
| `aws eks list-updates` | Lists the updates associated with an EKS cluster or node group. | `aws eks list-updates --name my-cluster` |
| `aws eks describe-update` | Describes a specific update for an EKS cluster or node group. | `aws eks describe-update --name my-cluster --update-id 12345-67890` |
| `aws eks list-fargate-profiles` | Lists the Fargate profiles associated with an EKS cluster. | `aws eks list-fargate-profiles --cluster-name my-cluster` |
| `aws eks describe-fargate-profile` | Describes a specific Fargate profile in an EKS cluster. | `aws eks describe-fargate-profile --cluster-name my-cluster --fargate-profile-name my-profile` |
| `aws eks create-cluster` | Creates a new EKS cluster. | `aws eks create-cluster --name my-cluster --role-arn arn:aws:iam::123456789012:role/eksClusterRole --resources-vpc-config subnetIds=subnet-abcde123,subnet-fghij456` |
| `aws eks update-cluster-config` | Updates an existing EKS cluster configuration. | `aws eks update-cluster-config --name my-cluster --resources-vpc-config endpointPrivateAccess=true` |
| `aws eks update-cluster-version` | Updates the Kubernetes version for an EKS cluster. | `aws eks update-cluster-version --name my-cluster --kubernetes-version 1.20` |
| `aws eks delete-cluster` | Deletes an EKS cluster. | `aws eks delete-cluster --name my-cluster` |
| `aws eks create-nodegroup` | Creates a new node group in an EKS cluster. | `aws eks create-nodegroup --cluster-name my-cluster --nodegroup-name my-nodegroup --subnets subnet-abcde123 subnet-fghij456 --instance-types t3.medium` |
| `aws eks update-nodegroup-config` | Updates an existing node group configuration. | `aws eks update-nodegroup-config --cluster-name my-cluster --nodegroup-name my-nodegroup --scaling-config minSize=1,maxSize=3,desiredSize=2` |
| `aws eks update-nodegroup-version` | Updates the AMI version for a node group. | `aws eks update-nodegroup-version --cluster-name my-cluster --nodegroup-name my-nodegroup --ami-type AL2_x86_64` |
| `aws eks delete-nodegroup` | Deletes a node group from an EKS cluster. | `aws eks delete-nodegroup --cluster-name my-cluster --nodegroup-name my-nodegroup` |
| `aws eks create-fargate-profile` | Creates a new Fargate profile in an EKS cluster. | `aws eks create-fargate-profile --cluster-name my-cluster --fargate-profile-name my-profile --pod-execution-role-arn arn:aws:iam::123456789012:role/eksFargatePodExecutionRole --subnets subnet-abcde123` |
| `aws eks delete-fargate-profile` | Deletes a Fargate profile from an EKS cluster. | `aws eks delete-fargate-profile --cluster-name my-cluster --fargate-profile-name my-profile` |
| `aws eks tag-resource` | Adds or overwrites tags for an EKS resource. | `aws eks tag-resource --resource-arn arn:aws:eks:us-west-2:123456789012:cluster/my-cluster --tags KeyName=Value` |
| `aws eks untag-resource` | Removes tags from an EKS resource. | `aws eks untag-resource --resource-arn arn:aws:eks:us-west-2:123456789012:cluster/my-cluster --tag-keys KeyName` |
