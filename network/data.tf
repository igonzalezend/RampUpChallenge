data "aws_vpc" "IGonzalez_APareja_VPC" {
  filter {
    name = "tag:Name"
    values = ["IGonzalez_APareja_VPC"]
  }
}