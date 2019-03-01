resource "aws_subnet" "Public_Subnets" {
     count = "${length(var.public_subnet_names)}"
     vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"
     availability_zone = "${var.availability_zone[0]}"
     cidr_block = "${element(var.public_cidr_blocks, count.index)}"

     tags {
          Name = "${element(var.public_subnet_names, count.index)}"
     }
}

resource "aws_subnet" "Private_Subnets" {
     vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"
     availability_zone = "${var.availability_zone[1]}"
     cidr_block = "${var.private_cidr_block}"

     tags {
          Name = "${var.private_subnet_name}"
     }
}
