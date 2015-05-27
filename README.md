### --- Test list ---

## --- Incuded Modules ---

List of modules included in this skeleton package.
* VPC
* Consul
* Chef
* Instances


## --- USAGE ---

TODO: Add how to use steps here

module "vpc" {
	source = "./vpc"

	stack_name = "stest"
	region = "us-east-1"
	vpc_cidr = "10.0.0.0/16"
	public_sub_cidr = "10.0.0.0/24"
	private_sub_cidr = "10.0.1.0/24"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}