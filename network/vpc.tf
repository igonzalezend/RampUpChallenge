resource "aws_vpc" "IGonzalez_VPC" {
  cidr_block = "${var.vpc_cidr_block}"

  tags {
      Name = "IGonzalez_VPC"
  }
}
