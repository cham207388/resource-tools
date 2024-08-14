# IAM Commands

| Command | Explanation | Usage |
|---------|-------------|-------|
| `aws iam list-users` | List all IAM users | `aws iam list-users` |
| `aws iam create-user --user-name UserName` | Create a new IAM user | `aws iam create-user --user-name UserName` |
| `aws iam delete-user --user-name UserName` | Delete an IAM user | `aws iam delete-user --user-name UserName` |
| `aws iam list-groups` | List all IAM groups | `aws iam list-groups` |
| `aws iam create-group --group-name GroupName` | Create a new IAM group | `aws iam create-group --group-name GroupName` |
| `aws iam delete-group --group-name GroupName` | Delete an IAM group | `aws iam delete-group --group-name GroupName` |
| `aws iam add-user-to-group --user-name UserName --group-name GroupName` | Add a user to a group | `aws iam add-user-to-group --user-name UserName --group-name GroupName` |
| `aws iam remove-user-from-group --user-name UserName --group-name GroupName` | Remove a user from a group | `aws iam remove-user-from-group --user-name UserName --group-name GroupName` |
| `aws iam list-policies` | List all IAM policies | `aws iam list-policies` |
| `aws iam create-policy --policy-name PolicyName --policy-document file://policy.json` | Create a new IAM policy | `aws iam create-policy --policy-name PolicyName --policy-document file://policy.json` |
| `aws iam delete-policy --policy-arn arn:aws:iam::aws:policy/PolicyName` | Delete an IAM policy | `aws iam delete-policy --policy-arn arn:aws:iam::aws:policy/PolicyName` |
| `aws iam attach-user-policy --user-name UserName --policy-arn arn:aws:iam::aws:policy/PolicyName` | Attach a policy to a user | `aws iam attach-user-policy --user-name UserName --policy-arn arn:aws:iam::aws:policy/PolicyName` |
| `aws iam detach-user-policy --user-name UserName --policy-arn arn:aws:iam::aws:policy/PolicyName` | Detach a policy from a user | `aws iam detach-user-policy --user-name UserName --policy-arn arn:aws:iam::aws:policy/PolicyName` |
| `aws iam attach-group-policy --group-name GroupName --policy-arn arn:aws:iam::aws:policy/PolicyName` | Attach a policy to a group | `aws iam attach-group-policy --group-name GroupName --policy-arn arn:aws:iam::aws:policy/PolicyName` |
| `aws iam detach-group-policy --group-name GroupName --policy-arn arn:aws:iam::aws:policy/PolicyName` | Detach a policy from a group | `aws iam detach-group-policy --group-name GroupName --policy-arn arn:aws:iam::aws:policy/PolicyName` |
| `aws iam list-roles` | List all IAM roles | `aws iam list-roles` |
| `aws iam create-role --role-name RoleName --assume-role-policy-document file://trust-policy.json` | Create a new IAM role | `aws iam create-role --role-name RoleName --assume-role-policy-document file://trust-policy.json` |
| `aws iam delete-role --role-name RoleName` | Delete an IAM role | `aws iam delete-role --role-name RoleName` |
| `aws iam attach-role-policy --role-name RoleName --policy-arn arn:aws:iam::aws:policy/PolicyName` | Attach a policy to a role | `aws iam attach-role-policy --role-name RoleName --policy-arn arn:aws:iam::aws:policy/PolicyName` |
| `aws iam detach-role-policy --role-name RoleName --policy-arn arn:aws:iam::aws:policy/PolicyName` | Detach a policy from a role | `aws iam detach-role-policy --role-name RoleName --policy-arn arn:aws:iam::aws:policy/PolicyName` |
| `aws iam create-access-key --user-name UserName` | Create a new access key for a user | `aws iam create-access-key --user-name UserName` |
| `aws iam list-access-keys --user-name UserName` | List access keys for a user | `aws iam list-access-keys --user-name UserName` |
| `aws iam delete-access-key --user-name UserName --access-key-id AKIA1234567890EXAMPLE` | Delete an access key for a user | `aws iam delete-access-key --user-name UserName --access-key-id AKIA1234567890EXAMPLE` |
| `aws iam update-access-key --user-name UserName --access-key-id AKIA1234567890EXAMPLE --status Active` | Update the status of an access key for a user | `aws iam update-access-key --user-name UserName --access-key-id AKIA1234567890EXAMPLE --status Active` |
