output "github_actions_role_arn" {
  value       = aws_iam_role.github_actions_role.arn
}

output "terraform_state_bucket_name" {
  value       = aws_s3_bucket.terraform_state.id
}

output "terraform_lock_table_name" {
  value       = aws_dynamodb_table.terraform_locks.name
}
