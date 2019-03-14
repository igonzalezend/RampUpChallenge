resource "aws_instance" "IGonzalez_Bastion" {
  ami = "${data.aws_ami.ubuntu-18_04.id}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = true
  availability_zone = "us-east-1a"
  key_name = "${var.key_name}"

  tags{
      Name = "IGonzalez_Bastion"
  }
}
