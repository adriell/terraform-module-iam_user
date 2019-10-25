# Terraform Module - AWS Identity and Access Management (IAM)

## Terraform versions

Terraform 0.12. 


## Usage

`iam-user`:
```hcl
module "iam_user" {
  source  = "../../"
  name        = "example"
  enabled     = true
  policy      = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

  attach_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonCognitoReadOnly"
  ]
  tags = {
    Name = "Iam_Example"  
  }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| enabled | Set to false to prevent the module from creating any resources | bool | true | no |
| name | Name of the IAM user | string | n/a | yes |
| path | Path of the IAM user | string | / | no |
| attach_policy_arns | Existing policy ARNs to attach to the IAM user | string | [] | no |
| tags | Tags of the resources | map| n/a | no |
| policy | Policy to attach Iam User | string | null | no |


## Authors

Module managed by [Adriel Viana](https://github.com/adriell).

## License

Apache 2 Licensed. See LICENSE for full details.
