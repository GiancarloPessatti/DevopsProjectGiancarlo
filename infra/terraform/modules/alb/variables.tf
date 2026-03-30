variable "project_name" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "subnet_ids" {
  type        = list(string)
}

variable "alb_security_group_id" {
  type        = string
}

variable "alb_target_group_port" {
  type        = number
}

variable "vpc_id" {
  type        = string
}

variable "alb_port" {
  type        = number
}
