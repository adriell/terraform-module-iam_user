output "iam_user_arn" {
  description = "ARN do Usuário"
  value       = module.iam_user.iam_user_arn

}

output "iam_user_id" {
  description = "IAM ID do usuário"
  value       = module.iam_user.iam_user_id
}

output "access_key_id" {
  description = "Access key id"
  value       = module.iam_user.access_key_id
}

output "access_secret_key" {
  description = "Secret access key"
  value       = module.iam_user.access_secret_key
}
