variable "region" {
  description = "Region to create the AWS resources"
  default     = "us-east-1"
}

variable "prefix" {
  default = "demo-ecs"
}

variable "project" {
  description = "Name of the project to be deployed on this infrastructure"
  default     = "demo-ecs-devops"
}

variable "contact" {
  description = "Email of the contact person responsible for this infrastructure"
  default     = "email@kenappiah.com"
}

variable "bastion_key_name" {
  default = "tomcat"
}

variable "db_username" {
  description = "Username for the RDS postgres instance"
}

variable "db_password" {
  description = "Password for the RDS postgres instance"
}

variable "ecr_image_api" {
  description = "ECR image for API"
  default     = "654293611157.dkr.ecr.us-east-1.amazonaws.com/golang_api"
}

variable "ecr_image_proxy" {
  description = "ECR image for Proxy"
  default     = "654293611157.dkr.ecr.us-east-1.amazonaws.com/golang_proxy"
}


variable "dns_zone_name" {
  description = "Domain Name"
  default     = "kenappiah.com"
}

variable "subdomain" {
  description = "Subdomain per environment"
  type        = map(string)
  default = {
    production = "api"
    staging    = "api.staging"
    dev        = "api.dev"
  }
}

variable "domain_name" {
  description = "Domain name"
  type        = string
  default     = "kenappiah.com"
}