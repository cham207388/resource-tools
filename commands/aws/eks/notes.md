# EKS

## Prometheous

- [eks prometheous](https://docs.aws.amazon.com/eks/latest/userguide/deploy-prometheus.html)
- install metrics-server
- create prometheous namespace
- install prometheous using helm
- install grafana for cool dashboard

## Service Account

- create role: service-account-role
  - attach policies to interact with Postgres and S3
  - AmazonRDSFull and AMZS3FullAccess
- [irsa reference](https://surajblog.medium.com/aws-iam-roles-for-service-accounts-irsa-with-terraform-a870765def0e)
