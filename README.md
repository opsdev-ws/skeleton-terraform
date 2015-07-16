### --- Test list ---

## --- Included Modules ---

List of modules included in this skeleton package.
* VPC
* Consul
* Chef
* Instances


## --- USAGE ---

TODO: Add how to use steps here

module "vpc" 
{
	source = "./vpc"

	stack_name = "__your prefix for the vpc__"
	region = "__region to launch in__"
	vpc_cidr = "__cidr of the vpc__"
	public_sub_cidr = "__cidr of the public subnet created in the vpc__"
	private_sub_cidr = "__cidr of the private subnet created in the vpc__"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}


module "consul" 
{
	source = "./consul"

	region = "us-east-1"
	
	access_key = "${var.access_key}"
	secret_key = "${var.secret_key}"

	key_name = "stest"
	key_path = "~/Documents/keyfiles/stest.pem"

	vpc_id = "vpc-679dad02"
	subnet_id = "subnet-755ad35e"
}