variable "project_name" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "aws_region" {
  type        = string
}

variable "vpc_cidr_block" {
  type        = string
}

variable "public_subnet_1_cidr_block" {
  type        = string
}

variable "public_subnet_2_cidr_block" {
  type        = string
}

variable "availability_zones" {
  type        = list(string)
}
