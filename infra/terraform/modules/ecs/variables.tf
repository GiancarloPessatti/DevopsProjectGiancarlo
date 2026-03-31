variable "project_name" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "ecs_task_cpu" {
  type        = number
}

variable "ecs_task_memory" {
  type        = number
}

variable "ecs_task_execution_role_arn" {
  type        = string
}

variable "ecs_container_image" {
  type        = string
}

variable "ecs_container_port" {
  type        = number
}

variable "ecs_service_desired_count" {
  type        = number
}

variable "subnet_ids" {
  type        = list(string)
}

variable "app_security_group_id" {
  type        = string
}

variable "alb_target_group_arn" {
  type        = string
}

variable "alb_listener_http" {
  type        = any
}
