resource "aws_security_group_rule" "Jenkins_Internet_Output" {
  type            = "egress"
  from_port       = 0
  to_port         = 65535
  protocol        = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_Jenkins_SG.id}"
}

resource "aws_security_group_rule" "Backend_Internet_Output" {
  type            = "egress"
  from_port       = 0
  to_port         = 65535
  protocol        = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_BackEnd_SG.id}"
}

resource "aws_security_group_rule" "Frontend_Internet_Output" {
  type            = "egress"
  from_port       = 0
  to_port         = 65535
  protocol        = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_FrontEnd_SG.id}"
}

resource "aws_security_group_rule" "DB_Internet_Output" {
  type            = "egress"
  from_port       = 0
  to_port         = 65535
  protocol        = "all"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${aws_security_group.IGonzalez_DB_SG.id}"
}