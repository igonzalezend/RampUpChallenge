resource "aws_lb_listener" "IGonzalez_LB_Listener" {
  count = "${length(var.lb_ports)}"
  load_balancer_arn = "${aws_lb.IGonzalez_LB.arn}"
  port = "${element(var.lb_ports, count.index)}"
  protocol = "${var.lb_protocol}"

  default_action {
      type = "${var.lb_action}"
      target_group_arn = "${aws_lb_target_group.IGonzalez_Frontend_Target_Group.arn}"
  }
}