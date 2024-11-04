# AWS Tips

## Use AWS IAM Roles in GitHub Actions

- [gh aws roles](https://www.hostersi.com/blog/use-iam-roles-to-link-github-actions-with-actions-in-aws/)
- [gh docs](https://docs.github.com/en/actions/security-for-github-actions/security-hardening-your-deployments/configuring-openid-connect-in-amazon-web-services)

- arn:aws:iam::<account-number>:oidc-provider/token.actions.githubusercontent.com

Configure AWS CLI

```bash
aws configure
```

- AWS Access Key ID
- AWS Secret Access Key
- Default region name
- Default output format

```bash
aws s3 ls --profile develop
```
