output "iam_user_arn" {
  description = "ARN do Usuário"
  value       = element(concat(aws_iam_user.this.*.arn, [""]), 0)

}

output "iam_user_id" {
  description = "IAM ID do usuário"
  value       = element(concat(aws_iam_user.this.*.id, [""]), 0)
}

output "access_key_id" {
  description = "Access key id"
  value       = element(concat(aws_iam_access_key.this.*.id, [""]), 0)
}

output "secret_key" {
  description = "Secret access key"
  value       = element(concat(aws_iam_access_key.this.*.secret, [""]), 0)
}
