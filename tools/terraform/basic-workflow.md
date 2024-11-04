# A Simple Terraform Workflow

Step | Command |
---------|----------|
initialize | `terraform init` |
creates a workspace | `terraform workspace new <ws-name>` optional |
validate configuration | `terraform validate` |
See plan | `terraform plan` |
Apply desired config | `terraform apply` |

## Miscellaneous

Step | Command |
---------|----------|
format  | `terraform fmt` |
linting | `tflint` |
Create a doc | `terraform-docs markdown table . > tf-docs.md` |
