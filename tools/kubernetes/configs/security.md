# Security

## Create a service account

```bash
apiVersion: v1
kind: ServiceAccount
metadata:
  name: hpa-manager-sa
  namespace: default
  annotations:
    eks.amazonaws.com/role-arn: arn:aws:iam::123456789012:role/my-iam-role  # Replace with actual role ARN
```

## Role

```bash
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  namespace: default
  name: hpa-manager-role
rules:
- apiGroups: ["autoscaling"]
  resources: ["horizontalpodautoscalers"]
  verbs: ["create", "list", "delete", "update", "watch", "get"]
```

## RoleBinding

```bash
apiVersion: rbac.authorization.k8s.io/v1
kind: RoleBinding
metadata:
  name: hpa-manager-binding
  namespace: default
subjects:
- kind: ServiceAccount
  name: hpa-manager-sa
  namespace: default
roleRef:
  kind: Role
  name: hpa-manager-role
  apiGroup: rbac.authorization.k8s.io
```

## Create a AWS IAM Role (with policy)

Trust Policy

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::123456789012:oidc-provider/oidc.eks.region.amazonaws.com/id/EKS_CLUSTER_ID"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "oidc.eks.region.amazonaws.com/id/EKS_CLUSTER_ID:sub": "system:serviceaccount:default:aws-access-sa"
        }
      }
    }
  ]
}
```

Policy

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::my-bucket/*"
    }
  ]
}

```

##