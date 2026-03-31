output "alb_dns_name" {
  value       = module.alb.alb_dns_name
}

output "ecr_repository_url" {
  value       = module.ecr.ecr_repository_url
}

output "ecs_cluster_name" {
  value       = module.ecs.ecs_cluster_name
}

output "ecs_service_name" {
  value       = module.ecs.ecs_service_name
}

output "ecs_task_execution_role_arn" {
  value       = module.iam.ecs_task_execution_role_arn
}
