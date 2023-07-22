variable "AWS_REGION" {
  default = "eu-west-3"
}
variable "vpc_tag" {
  type        = string
  description = "tag for vpc "
}
variable "vpc_cidr" {
  type = string
  description = "cidr bloc adresses for vpc"
  
}
variable "public_subnets_cidr" {
  type        = list(any)
  description = "CIDR blocks for Public Subnets"
  default     = ["10.0.1.0/24","10.0.2.0/24"]
}
variable "availability_zones" {
  type        = list(any)
  description = "AZ in which all the resources will be deployed"
  default     = []
}
variable "cluster_name" {
  type        = string
  description = "name of eks cluster"
}
variable "environment" {
  type        = string
  description = "tag"
}