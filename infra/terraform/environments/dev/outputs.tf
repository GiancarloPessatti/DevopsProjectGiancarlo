output "alb_dns_name" {
  description = "O nome DNS do ALB para o ambiente dev."
  value       = module.alb.alb_dns_name
}

output "ecr_repository_url" {
  description = "URL do repositório ECR para o ambiente dev."
  value       = module.ecr.ecr_repository_url
}

output "ecs_cluster_name" {
  description = "Nome do cluster ECS para o ambiente dev."
  value       = module.ecs.ecs_cluster_name
}

output "ecs_service_name" {
  description = "Nome do serviço ECS para o ambiente dev."
  value       = module.ecs.ecs_service_name
}
