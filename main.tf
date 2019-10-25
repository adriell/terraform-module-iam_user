# -------------------------------------------------------------------------------------------------
# IAM User
# -------------------------------------------------------------------------------------------------
resource "aws_iam_user" "this" {
  name          = var.name
  path          = var.path
  force_destroy = true
  tags          = var.tags
}

# -------------------------------------------------------------------------------------------------
# IAM Acess_key and Secret_key
# -------------------------------------------------------------------------------------------------

resource "aws_iam_access_key" "this" {
  user  = element(concat(aws_iam_user.this.*.name, [""]), 0)
}

# -------------------------------------------------------------------------------------------------
# IAM Policy
# -------------------------------------------------------------------------------------------------

resource "aws_iam_user_policy" "this_inline" {
  count  = var.policy != null ? 1 : 0
  name   = var.name
  user   = element(concat(aws_iam_user.this.*.name, [""]), 0)
  policy = var.policy
}

# -------------------------------------------------------------------------------------------------
# Attach policy ARN
# -------------------------------------------------------------------------------------------------
resource "aws_iam_user_policy_attachment" "this_arn" {
  count      = var.enabled ? length(var.attach_policy_arns) : 0
  user       = element(concat(aws_iam_user.this.*.name, [""]), 0)
  policy_arn = var.attach_policy_arns[count.index]
}
