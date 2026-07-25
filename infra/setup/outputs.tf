output "cd_user_access" {
  description = "AWS key ID for CD user"
  value       = aws_iam_access_key.cd.id
}

output "cd_user_access_key_secret" {
  description = "Access Key secret for CD user"
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
}
