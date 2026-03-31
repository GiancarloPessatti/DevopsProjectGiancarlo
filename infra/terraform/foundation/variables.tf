variable "aws_region" {
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  type        = string
  default     = "devopsprojectgiancarlo"
}

variable "github_repo" {
  type        = string
  default     = "GiancarloPessatti/DevopsProjectGiancarlo"
}

variable "terraform_state_bucket_name" {
  type        = string
  default     = "devops-portfolio-terraform-state-giancarlo"
}

variable "terraform_lock_table_name" {
  type        = string
  default     = "terraform-lock"
}
