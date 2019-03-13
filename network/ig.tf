resource "aws_internet_gateway" "IGonzalez_IG" {
  vpc_id = "${aws_vpc.IGonzalez_VPC.id}"

  tags {
      Name = "IGonzalez_IG"
  }
}
