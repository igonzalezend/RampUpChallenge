resource "aws_subnet" "IGonzalez_1c_Subnets" {
     count = "${length(var.az1c_subnet_names)}"
     vpc_id = "${aws_vpc.IGonzalez_VPC.id}"
     availability_zone = "${var.availability_zone[0]}"
     cidr_block = "${element(var.az1c_cidr_blocks, count.index)}"

     tags {
          Name = "${element(var.az1c_subnet_names, count.index)}"
     }
}

resource "aws_subnet" "IGonzalez_1d_Subnets" {
     vpc_id = "${aws_vpc.IGonzalez_VPC.id}"
     availability_zone = "${var.availability_zone[1]}"
     cidr_block = "${var.az1d_cidr_block}"

     tags {
          Name = "${var.az1d_subnet_name}"
     }
}
