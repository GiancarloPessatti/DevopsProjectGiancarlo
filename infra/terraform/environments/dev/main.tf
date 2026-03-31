module "network" {
  source = "../../modules/network"

  project_name       = var.project_name
  environment        = var.environment
  aws_region         = var.aws_region
  vpc_cidr_block     = var.vpc_cidr_block
  public_subnet_1_cidr_block = var.public_subnet_1_cidr_block
  public_subnet_2_cidr_block = var.public_subnet_2_cidr_block
  availability_zones = var.availability_zones
}

module "security" {
  source = "../../modules/security"

  project_name = var.project_name
  environment  = var.environment
  vpc_id       = module.network.vpc_id
  app_port     = var.alb_target_group_port
  alb_port     = var.alb_port
}

module "iam" {
  source = "../../modules/iam"

  project_name = var.project_name
  environment  = var.environment
}

module "ecr" {
  source = "../../modules/ecr"

  project_name        = var.project_name
  environment         = var.environment
  ecr_repository_name = var.ecr_repository_name
}

module "alb" {
  source = "../../modules/alb"

  project_name        = var.project_name
  environment         = var.environment
  subnet_ids          = module.network.public_subnet_ids
  alb_security_group_id = module.security.alb_security_group_id
  alb_target_group_port = var.alb_target_group_port
  vpc_id              = module.network.vpc_id
  alb_port            = var.alb_port
}

module "ecs" {
  source = "../../modules/ecs"

  project_name                = var.project_name
  environment                 = var.environment
  ecs_task_cpu                = var.ecs_task_cpu
  ecs_task_memory             = var.ecs_task_memory
  ecs_task_execution_role_arn = module.iam.ecs_task_execution_role_arn
  ecs_container_image         = var.ecs_container_image
  ecs_container_port          = var.ecs_container_port
  ecs_service_desired_count   = var.ecs_service_desired_count
  subnet_ids                  = module.network.public_subnet_ids
  app_security_group_id       = module.security.app_security_group_id
  alb_target_group_arn        = module.alb.alb_target_group_arn
  alb_listener_http           = module.alb.alb_listener_http
}
