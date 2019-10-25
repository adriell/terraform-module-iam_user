provider "aws" {
  region              = "us-east-1"
}


terraform {
  backend "s3" {
    encrypt = true
    bucket  = "terraform-users-mandic-teste-dev"
    region  = "us-east-1"
    key     = "terraform.tfstate"
  }
}
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

