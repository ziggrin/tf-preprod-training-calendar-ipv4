variable "aws_account" {
  description = "Name of the AWS Account to connect to"
  type        = string
  default = "main-01"
}

variable "aws_account_id" {
  description = "ID of the AWS Account"
  type        = string
}

variable "aws_region" {
  description = "AWS region to connect to"
  type        = string
  default     = "eu-north-1"
}

variable "environment" {
  description = "Select instance environment PROD_PILOT | PROD_STAGING | PRODUCTION | PREPROD_PILOT | PREPROD"
  type        = string
  default = "PREPROD"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "Private subnets for RDS and ECS"
  type = list
}

variable "ecs_sg" {
  description = "ECS security groups"
  type        = list
}

variable "db_sg" {
  description = "RDS security groups"
  type        = list
}

variable "lb_listener_arn" {
  description = "HTTPS listener arn -> hosting-alb"
  type        = string
  sensitive   = true
}

variable "db_username" {
  description = "Database administrator username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
} 
