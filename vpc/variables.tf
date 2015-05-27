variable "access_key" {}
variable "secret_key" {}

variable "stack_name" {
	description = "Prefix for the vpc stack."
}

variable "region" {
	description = "Region to launch the VPC in."
}

variable "vpc_cidr" {
	description = "The main cidr to use when creating the VPC."
}

variable "public_sub_cidr" {
	description = "The cidr to use when creating the PUBLIC subnet."
}

variable "private_sub_cidr" {
	description = "The cidr to use when creating the PRIVATE subnet."
}