provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region     = "${var.region}"
}

resource "aws_vpc" "main" {
	cidr_block = "${var.vpc_cidr}"

	tags {
		Name = "${var.stack_name}-main"
	}
}

resource "aws_internet_gateway" "ig" {
	vpc_id = "${aws_vpc.main.id}"

	tags {
		Name = "${var.stack_name}-ig"
	}
}

resource "aws_subnet" "public" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "${var.public_sub_cidr}"

	tags {
		Name = "${var.stack_name}-public"
	}
}

resource "aws_subnet" "private" {
	vpc_id = "${aws_vpc.main.id}"
	cidr_block = "${var.private_sub_cidr}"

	tags {
		Name = "${var.stack_name}-private"
	}
}