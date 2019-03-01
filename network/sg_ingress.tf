resource "aws_security_group_rule" "Jenkins_Internet_Access" {
  type            = "ingress"
  from_port       = 8080
  to_port         = 8080
  protocol        = "tcp"
  cidr_blocks = ["181.57.222.58/32"]

  security_group_id = "${aws_security_group.IGonzalez_Jenkins_SG.id}"
}

resource "aws_security_group_rule" "Jenkins_SSH_Access" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["181.57.222.58/32"]

  security_group_id = "${aws_security_group.IGonzalez_Jenkins_SG.id}"
}

resource "aws_security_group_rule" "Backend_Access" {
  type            = "ingress"
  from_port       = 3000
  to_port         = 3000
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_BackEnd_SG.id}"
}

resource "aws_security_group_rule" "Backend_SSH_Access" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_BackEnd_SG.id}"
}

resource "aws_security_group_rule" "Frontend_Access" {

  count = "${length(var.frontend_open_ports)}"

  type            = "ingress"
  from_port       = "${element(var.frontend_open_ports, count.index)}"
  to_port         = "${element(var.frontend_open_ports, count.index)}"
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_FrontEnd_SG.id}"
}

resource "aws_security_group_rule" "Frontend_SSH_Access" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_FrontEnd_SG.id}"
}

resource "aws_security_group_rule" "DB_Access" {

  type            = "ingress"
  from_port       = 3306
  to_port         = 3306
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_DB_SG.id}"
}