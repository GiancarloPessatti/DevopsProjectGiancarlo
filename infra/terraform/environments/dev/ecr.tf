resource "aws_ecr_repository" "backend" {
  name = "${var.project_name}-${var.environment}-backend"

  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}