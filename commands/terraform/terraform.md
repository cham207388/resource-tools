# Terraform Command Reference

This table provides a quick reference to the most commonly used Terraform commands, their explanations, and example usages.

| Command                    | Explanation                                                                 | Example Usage                         |
|----------------------------|-----------------------------------------------------------------------------|---------------------------------------|
| `terraform apply`          | Applies the changes required to reach the desired state of the configuration.| `terraform apply`                     |
| `terraform destroy`        | Destroys the Terraform-managed infrastructure.                              | `terraform destroy`                   |
| `terraform fmt`            | Formats Terraform configuration files to a canonical format.                | `terraform fmt`                       |
| `terraform graph`          | Generates a visual representation of the configuration.                     | `terraform graph`                     |
| `terraform import`         | Imports existing infrastructure into Terraform.                             | `terraform import aws_instance.my_instance i-12345678` |
| `terraform init`           | Initializes a new or existing Terraform configuration. Downloads plugins.   | `terraform init`                      |
| `terraform output`         | Reads an output from a state file.                                          | `terraform output my_output`          |
| `terraform plan`           | Creates an execution plan, showing what actions Terraform will take.        | `terraform plan`                      |
| `terraform providers`      | Prints a tree of the providers used in the configuration.                   | `terraform providers`                 |
| `terraform refresh`        | Updates the state file with real-world infrastructure.                      | `terraform refresh`                   |
| `terraform show`           | Shows the current state or a saved plan.                                    | `terraform show`                      |
| `terraform state list`     | Lists resources within the state file.                                      | `terraform state list`                |
| `terraform state mv`       | Moves an item in the state file.                                            | `terraform state mv old_resource new_resource` |
| `terraform state pull`     | Retrieves the state from its backend.                                       | `terraform state pull`                |
| `terraform state push`     | Updates remote state from the local state.                                  | `terraform state push`                |
| `terraform state replace-provider` | Replaces provider in the state.                                     | `terraform state replace-provider old_provider new_provider` |
| `terraform state rm`       | Removes items from the state file.                                          | `terraform state rm my_resource`      |
| `terraform state show`     | Shows attributes of a single resource in the state file.                    | `terraform state show my_resource`    |
| `terraform taint`          | Marks a resource for recreation on the next apply.                          | `terraform taint my_resource`         |
| `terraform untaint`        | Removes the 'tainted' state from a resource.                                | `terraform untaint my_resource`       |
| `terraform validate`       | Validates the Terraform configuration files.                                | `terraform validate`                  |
| `terraform version`        | Prints the Terraform version.                                               | `terraform version`                   |
| `terraform workspace delete`| Deletes an existing workspace.                                             | `terraform workspace delete my_workspace` |
| `terraform workspace list` | Lists all available workspaces.                                             | `terraform workspace list`            |
| `terraform workspace new`  | Creates a new workspace.                                                    | `terraform workspace new my_workspace`|
| `terraform workspace select` | Switches to an existing workspace.                                         | `terraform workspace select my_workspace` |
| `terraform workspace show` | Shows the current workspace.                                                | `terraform workspace show`            |

## Terraform Plan

### Terraform Plan Command and Options

| **Command/Option**               | **Explanation**                                                                                                 | **Example Usage**                                               |
|----------------------------------|-----------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| `terraform plan`                 | Creates an execution plan, showing what actions Terraform will take                                             | `terraform plan`                                                |
| `-input=[true/false]`            | Ask for input for variables if not directly set. Defaults to true                                                | `terraform plan -input=false`                                    |
| `-lock=[true/false]`             | Lock the state file when locking is supported. Defaults to true                                                  | `terraform plan -lock=false`                                     |
| `-lock-timeout=<duration>`       | Duration to retry a state lock.                                                                                  | `terraform plan -lock-timeout=5m`                                |
| `-no-color`                      | Disable color output                                                                                            | `terraform plan -no-color`                                       |
| `-out=<path>`                    | Write a plan file to the given path                                                                              | `terraform plan -out=plan.out`                                   |
| `-parallelism=n`                 | Limit the number of parallel resource operations.                                                                | `terraform plan -parallelism=10`                                 |
| `-refresh=[true/false]`          | Update the state prior to checking for differences. Defaults to true                                             | `terraform plan -refresh=false`                                  |
| `-state=<path>`                  | Path to the state file to use for this plan.                                                                     | `terraform plan -state=custom.tfstate`                           |
| `-target=resource`               | Resource address to target. This flag can be used multiple times.                                                | `terraform plan -target=aws_instance.example`                    |
| `-var 'foo=bar'`                 | Set a variable in the Terraform configuration. This flag can be used multiple times.                             | `terraform plan -var 'instance_type=t2.micro'`                   |
| `-var-file=foo`                  | Set variables in the Terraform configuration from a file.                                                        | `terraform plan -var-file=production.tfvars`                     |
| `-detailed-exitcode`             | Return detailed exit codes based on the outcome of the plan.                                                      | `terraform plan -detailed-exitcode`                              |
| `-destroy`                       | Generate a plan to destroy all resources managed by the given configuration                                      | `terraform plan -destroy`                                        |
| `-compact-warnings`              | Shows warnings in a more compact form that includes only the summary messages                                    | `terraform plan -compact-warnings`                               |
| `-json`                          | Outputs the plan in a machine-readable JSON format                                                                | `terraform plan -json`                                           |
| `-replace=resource`              | Force replacement of a particular resource during the plan. This flag can be used multiple times.                | `terraform plan -replace=aws_instance.example`                   |
| `-refresh-only`                  | Generate a plan to update the state only, without proposing any changes to resources                              | `terraform plan -refresh-only`                                   |
| `-check-suppress-dependencies`   | Suppress output from dependent resources that will not change                                                     | `terraform plan -check-suppress-dependencies`                    |
| `-config=<dir>`                  | Config directory to use                                                                                           | `terraform plan -config=./my-terraform-config`                   |
| `-module-depth=n`                | Specifies the depth of modules to display in the plan                                                             | `terraform plan -module-depth=2`                                 |
| `-out=<file>`                    | Write the generated execution plan to the given file                                                              | `terraform plan -out=plan.out`                                   |
| `-state=path`                    | Path to a state file to use to look up Terraform-managed resources                                                | `terraform plan -state=custom.tfstate`                           |
| `-type=plan`                     | Plan only certain resources types, can be used multiple times                                                     | `terraform plan -type=aws_instance`                              |

## Terraform Docs

| **Command**                        | **Explanation**                                          | **Usage**                             |
|------------------------------------|----------------------------------------------------------|---------------------------------------|
| `terraform-docs markdown .`        | Generate documentation in Markdown format                | `terraform-docs markdown .`           |
| `terraform-docs markdown table .`  | Generate documentation in Markdown table format          | `terraform-docs markdown table .`     |
| `terraform-docs json .`            | Generate documentation in JSON format                    | `terraform-docs json .`               |
| `terraform-docs xml .`             | Generate documentation in XML format                     | `terraform-docs xml .`                |
| `terraform-docs yaml .`            | Generate documentation in YAML format                    | `terraform-docs yaml .`               |
| `terraform-docs tfvars hcl .`      | Generate tfvars documentation in HCL format              | `terraform-docs tfvars hcl .`         |
| `terraform-docs tfvars json .`     | Generate tfvars documentation in JSON format             | `terraform-docs tfvars json .`        |
| `terraform-docs tfvars yaml .`     | Generate tfvars documentation in YAML format             | `terraform-docs tfvars yaml .`        |
| `terraform-docs asciidoc .`        | Generate documentation in AsciiDoc format                | `terraform-docs asciidoc .`           |
| `terraform-docs html .`            | Generate documentation in HTML format                    | `terraform-docs html .`               |
| `terraform-docs toml .`            | Generate documentation in TOML format                    | `terraform-docs toml .`               |
| `terraform-docs pretty .`          | Generate documentation in pretty format                  | `terraform-docs pretty .`             |
| `terraform-docs markdown . > README.md`  | Generate Markdown documentation and save to README.md | `terraform-docs markdown . > README.md` |
| `terraform-docs markdown table . > DOCS.md` | Generate Markdown table documentation and save to DOCS.md | `terraform-docs markdown table . > DOCS.md` |
