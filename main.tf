module "vpc" {
	source = "./vpc"

	stack_name = "stest"
	access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
	region = "us-east-1"
	vpc_cidr = "10.0.0.0/16"
	public_sub_cidr = "10.0.0.0/24"
	private_sub_cidr = "10.0.1.0/24"
}