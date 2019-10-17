output "this_iam_user_name" {
  description = "The user's name"
  value       = element(concat(aws_iam_user.this.*.name, [""]), 0)
}

output "this_iam_user_arn" {
  description = "The ARN assigned by AWS for this user"
  value       = element(concat(aws_iam_user.this.*.arn, [""]), 0)
}


#output "this_iam_user_login_profile_encrypted_password" {
#  description = "The encrypted password, base64 encoded"
#  value = element(
#    concat(aws_iam_user_login_profile.this.*.encrypted_password, [""]),
#    0,
#  )
#}

output "this_iam_access_key_id" {
  description = "The access key ID"
  value = element(
    concat(
      aws_iam_access_key.this.*.id,
      aws_iam_access_key.this_no_pgp.*.id,
      [""],
    ),
    0,
  )
}

output "this_iam_access_key_secret" {
  description = "The access key secret"
  value       = element(concat(aws_iam_access_key.this_no_pgp.*.secret, [""]), 0)
}



output "this_iam_access_key_status" {
  description = "Active or Inactive. Keys are initially active, but can be made inactive by other means."
  value = element(
    concat(
      aws_iam_access_key.this.*.status,
      aws_iam_access_key.this_no_pgp.*.status,
      [""],
    ),
    0,
  )
}






