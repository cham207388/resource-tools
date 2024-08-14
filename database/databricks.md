# Databricks Commands

## Starting point

| Step | Command | Explanation | Example Usage |
|------|---------|-------------|---------------|
| 1 | Done on console | Generate a personal access token in Databricks UI. | This allows you to obtain a token for auth |
| 2 | `pip install databricks-cli` | Install the Databricks CLI. | `pip install databricks-cli` |
| 3 | `databricks configure --token` | Configure the Databricks CLI with your host URL and personal access token. | `databricks configure --token` |
| 4 | `databricks clusters list` | List all clusters to ensure configuration is correct. | `databricks clusters list` |
| 4 | `databricks clusters start` | Start a specific cluster. | `databricks clusters start --cluster-id <cluster-id>` |
| 4 | `databricks jobs run-now` | Run a job on a cluster. | `databricks jobs run-now --job-id <job-id>` |

## Working with the cluster

| Command | Explanation | Example Usage |
|---------|-------------|---------------|
| `databricks clusters list` | Lists all clusters in the workspace. | `databricks clusters list` |
| `databricks clusters create` | Creates a new cluster. | `databricks clusters create --json-file /path/to/cluster-config.json` |
| `databricks clusters delete` | Deletes a cluster. | `databricks clusters delete --cluster-id <cluster-id>` |
| `databricks clusters get` | Retrieves information about a specific cluster. | `databricks clusters get --cluster-id <cluster-id>` |
| `databricks clusters edit` | Edits a cluster configuration. | `databricks clusters edit --json-file /path/to/cluster-config.json` |
| `databricks clusters restart` | Restarts a cluster. | `databricks clusters restart --cluster-id <cluster-id>` |
| `databricks jobs list` | Lists all jobs. | `databricks jobs list` |
| `databricks jobs create` | Creates a new job. | `databricks jobs create --json-file /path/to/job-config.json` |
| `databricks jobs delete` | Deletes a job. | `databricks jobs delete --job-id <job-id>` |
| `databricks jobs run-now` | Runs a job immediately. | `databricks jobs run-now --job-id <job-id>` |
| `databricks jobs reset` | Resets the job run state. | `databricks jobs reset --job-id <job-id>` |
| `databricks fs ls` | Lists files in a directory in DBFS. | `databricks fs ls dbfs:/path/to/dir` |
| `databricks fs cp` | Copies files to/from DBFS. | `databricks fs cp local-file-path dbfs:/path/to/dir` |
| `databricks fs mkdirs` | Creates directories in DBFS. | `databricks fs mkdirs dbfs:/path/to/dir` |
| `databricks fs rm` | Removes files from DBFS. | `databricks fs rm dbfs:/path/to/file` |
| `databricks secrets list-scopes` | Lists all secret scopes. | `databricks secrets list-scopes` |
| `databricks secrets create-scope` | Creates a new secret scope. | `databricks secrets create-scope --scope <scope-name>` |
| `databricks secrets delete-scope` | Deletes a secret scope. | `databricks secrets delete-scope --scope <scope-name>` |
| `databricks secrets put` | Adds a secret to a scope. | `databricks secrets put --scope <scope-name> --key <key-name>` |
| `databricks secrets delete` | Deletes a secret from a scope. | `databricks secrets delete --scope <scope-name> --key <key-name>` |
| `databricks secrets list` | Lists secrets within a scope. | `databricks secrets list --scope <scope-name>` |
| `databricks secrets put-acl` | Adds or overwrites an access control rule to a secret scope. | `databricks secrets put-acl --scope <scope-name> --principal <user-or-group> --permission <read|write>` |
| `databricks secrets list-acls` | Lists access control rules for a secret scope. | `databricks secrets list-acls --scope <scope-name>` |
| `databricks secrets delete-acl` | Deletes an access control rule from a secret scope. | `databricks secrets delete-acl --scope <scope-name> --principal <user-or-group>` |
| `databricks libraries install` | Installs libraries on a cluster. | `databricks libraries install --cluster-id <cluster-id> --pypi-package <package-name>` |
| `databricks libraries uninstall` | Uninstalls libraries from a cluster. | `databricks libraries uninstall --cluster-id <cluster-id> --pypi-package <package-name>` |
| `databricks libraries list` | Lists all libraries on a cluster. | `databricks libraries list --cluster-id <cluster-id>` |
| `databricks workspace list` | Lists objects in the workspace. | `databricks workspace list /path/to/dir` |
| `databricks workspace import` | Imports a file to the workspace. | `databricks workspace import local-file-path /workspace/path` |
| `databricks workspace export` | Exports a file from the workspace. | `databricks workspace export /workspace/path local-file-path` |
| `databricks workspace delete` | Deletes an object from the workspace. | `databricks workspace delete /workspace/path` |
| `databricks token create` | Creates a new token for authentication. | `databricks token create --lifetime-seconds 3600 --comment "token for testing"` |
| `databricks token list` | Lists all tokens. | `databricks token list` |
| `databricks token delete` | Deletes a token. | `databricks token delete --token-id <token-id>` |
