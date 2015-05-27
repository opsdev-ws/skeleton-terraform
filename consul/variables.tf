variable "access_key" {}
variable "secret_key" {}

variable "stack_name" {
    description = "Prefix for the vpc stack."
    default = ""
}

variable "ami" {
    default = {
        us-east-1 = "ami-3acc7a52"
        us-west-2 = "ami-37501207"
    }
}

variable "vpc_id" {
    description = "ID of the VPC to lanch in."
}

variable "subnet_id" {
    description = "The Subnet to launch the Consul servers in. "
}

variable "key_name" {
    description = "SSH key name in your AWS account for AWS instances."
}

variable "key_path" {
    description = "Path to the private key specified by key_name."
}

variable "region" {
    description = "The region of AWS, for AMI lookups."
    default = "us-east-1"
}

variable "servers" {
    default = 3
    description = "The number of Consul servers to launch."
}

variable "instance_type" {
    default = "m1.small"
    description = "The instance type to launch."
}