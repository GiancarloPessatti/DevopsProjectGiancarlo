resource "aws_ecr_repository" "backend" {
  name                 = "${var.project_name}-${var.environment}-${var.ecr_repository_name}"
  force_delete         = true
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "ecr_repository_url" {
  value       = aws_ecr_repository.backend.repository_url
}
