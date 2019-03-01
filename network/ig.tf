resource "aws_internet_gateway" "APareja_IGonzalez_InternetGateway" {
  vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"

  tags {
      Name = "APareja_IGonzalez_InternetGateway"
  }
}
