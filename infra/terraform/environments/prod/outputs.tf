output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
}

output "alb_dns_name" {
  description = "DNS do Application Load Balancer"
  value       = aws_lb.app.dns_name
}

output "ecs_execution_role_arn" {
  value = aws_iam_role.ecs_task_execution_role.arn
}