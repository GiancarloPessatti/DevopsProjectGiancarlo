variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "aws_region" {
  type = string
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_1_cidr_block" {
  type    = string
  default = "10.0.1.0/24"
}

variable "public_subnet_2_cidr_block" {
  type    = string
  default = "10.0.2.0/24"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "ecr_repository_name" {
  type    = string
  default = "backend"
}

variable "alb_port" {
  type    = number
  default = 80
}

variable "alb_target_group_port" {
  type    = number
  default = 3000
}

variable "ecs_task_cpu" {
  type    = number
  default = 256
}

variable "ecs_task_memory" {
  type    = number
  default = 512
}

variable "ecs_service_desired_count" {
  type    = number
  default = 1
}

variable "ecs_container_image" {
  type    = string
  default = "placeholdado"
}

variable "ecs_container_port" {
  type    = number
  default = 3000
}
