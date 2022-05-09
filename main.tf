#regiao:
variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

#provider
provider "aws" {
  region = var.region
}

#zona de criacao do recurso
data "aws_availability_zones" "available" {}

#nome do cluster
locals {
  cluster_name = "bill-eks-${random_string.suffix.result}"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
}
