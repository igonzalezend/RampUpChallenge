resource "aws_security_group_rule" "Internet_Output" {
  count = "${length(aws_security_group.IGonzalez_SG.*)}"
  type            = "egress"
  from_port       = 0
  to_port         = 0
  protocol        = "-1"
  cidr_blocks = ["0.0.0.0/0"]

  security_group_id = "${element(aws_security_group.IGonzalez_SG.*.id, count.index)}"
}

