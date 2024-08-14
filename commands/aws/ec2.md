# EC2 Commands

- [Types](https://aws.amazon.com/ec2/instance-types/)

| Command | Explanation | Usage |
|---------|-------------|-------|
| `aws ec2 describe-instances` | Describe all EC2 instances | `aws ec2 describe-instances` |
| `aws ec2 start-instances --instance-ids i-1234567890abcdef0` | Start a specific EC2 instance | `aws ec2 start-instances --instance-ids i-1234567890abcdef0` |
| `aws ec2 stop-instances --instance-ids i-1234567890abcdef0` | Stop a specific EC2 instance | `aws ec2 stop-instances --instance-ids i-1234567890abcdef0` |
| `aws ec2 reboot-instances --instance-ids i-1234567890abcdef0` | Reboot a specific EC2 instance | `aws ec2 reboot-instances --instance-ids i-1234567890abcdef0` |
| `aws ec2 terminate-instances --instance-ids i-1234567890abcdef0` | Terminate a specific EC2 instance | `aws ec2 terminate-instances --instance-ids i-1234567890abcdef0` |
| `aws ec2 describe-instances --instance-ids i-1234567890abcdef0` | Describe a specific EC2 instance | `aws ec2 describe-instances --instance-ids i-1234567890abcdef0` |
| `aws ec2 create-key-pair --key-name MyKeyPair` | Create a new key pair | `aws ec2 create-key-pair --key-name MyKeyPair` |
| `aws ec2 describe-key-pairs` | Describe all key pairs | `aws ec2 describe-key-pairs` |
| `aws ec2 delete-key-pair --key-name MyKeyPair` | Delete a specific key pair | `aws ec2 delete-key-pair --key-name MyKeyPair` |
| `aws ec2 create-security-group --group-name MySecurityGroup --description "My security group"` | Create a new security group | `aws ec2 create-security-group --group-name MySecurityGroup --description "My security group"` |
| `aws ec2 describe-security-groups` | Describe all security groups | `aws ec2 describe-security-groups` |
| `aws ec2 authorize-security-group-ingress --group-id sg-12345678 --protocol tcp --port 22 --cidr 0.0.0.0/0` | Add a rule to a security group to allow SSH access | `aws ec2 authorize-security-group-ingress --group-id sg-12345678 --protocol tcp --port 22 --cidr 0.0.0.0/0` |
| `aws ec2 revoke-security-group-ingress --group-id sg-12345678 --protocol tcp --port 22 --cidr 0.0.0.0/0` | Remove a rule from a security group | `aws ec2 revoke-security-group-ingress --group-id sg-12345678 --protocol tcp --port 22 --cidr 0.0.0.0/0` |
| `aws ec2 run-instances --image-id ami-0abcdef1234567890 --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-12345678` | Launch a new EC2 instance | `aws ec2 run-instances --image-id ami-0abcdef1234567890 --count 1 --instance-type t2.micro --key-name MyKeyPair --security-group-ids sg-12345678` |
| `aws ec2 describe-images --image-ids ami-0abcdef1234567890` | Describe a specific AMI | `aws ec2 describe-images --image-ids ami-0abcdef1234567890` |
| `aws ec2 create-image --instance-id i-1234567890abcdef0 --name "My server"` | Create an AMI from an instance | `aws ec2 create-image --instance-id i-1234567890abcdef0 --name "My server"` |
| `aws ec2 delete-security-group --group-id sg-12345678` | Delete a security group | `aws ec2 delete-security-group --group-id sg-12345678` |
| `aws ec2 allocate-address` | Allocate an Elastic IP address | `aws ec2 allocate-address` |
| `aws ec2 describe-addresses` | Describe all Elastic IP addresses | `aws ec2 describe-addresses` |
| `aws ec2 release-address --allocation-id eipalloc-12345678` | Release an Elastic IP address | `aws ec2 release-address --allocation-id eipalloc-12345678` |
| `aws ec2 associate-address --instance-id i-1234567890abcdef0 --allocation-id eipalloc-12345678` | Associate an Elastic IP address with an instance | `aws ec2 associate-address --instance-id i-1234567890abcdef0 --allocation-id eipalloc-12345678` |
| `aws ec2 disassociate-address --association-id eipassoc-12345678` | Disassociate an Elastic IP address from an instance | `aws ec2 disassociate-address --association-id eipassoc-12345678` |
