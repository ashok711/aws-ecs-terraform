provider "aws" {
  region = "ap-south-1"
}
resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr
    enable_dns_support   = true
    enable_dns_hostnames = true
    tags       = {
        Name = "Terraform-ECS-VPC"
    }
}