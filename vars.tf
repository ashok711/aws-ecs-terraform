variable "vpc_cidr" {
   description = "VPC CIDR Range"
   default = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "AZs in this region to use"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "subnet_cidrs_public" {
  description = "Subnet CIDRs for public subnets"
  type        = list(string)
  default     = ["10.0.0.0/20", "10.0.16.0/20"]
}

variable "subnet_cidrs_private" {
  description = "Subnet CIDRs for private subnets"
  type        = list(string)
  default     = ["10.0.32.0/20", "10.0.48.0/20"]
}

variable "pub_subnet_name_tag" {
    description = "Name tag for different subnets"
    type        = list(string)
    default     = ["pub_sub_1a", "pub_sub_1b"]
}

variable "pvt_subnet_name_tag" {
    description = "Name tag for different subnets"
    type        = list(string)
    default     = ["pvt_sub_1a", "pvt_sub_1b"]
}