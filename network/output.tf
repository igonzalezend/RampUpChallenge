output "public_subnet_ids" {
  value = ["${aws_subnet.IGonzalez_1c_Subnets.*.id}"]
}
output "private_subnet_id" {
  value = "${aws_subnet.IGonzalez_1d_Subnets.id}"
}
