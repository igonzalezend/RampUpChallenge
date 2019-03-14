resource "aws_lb" "IGonzalez_LB" {
  name = "${var.lb_name}" 

  internal           = false
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.IGonzalez_SG.5.id}"]
  subnets            = ["${aws_subnet.IGonzalez_1c_Subnets.0.id}", "${aws_subnet.IGonzalez_1d_Subnets.id}"]

}

resource "aws_lb" "IGonzalez_LB_Back" {
  name = "IGonzalez-LB-Back" 

  internal           = true
  load_balancer_type = "application"
  security_groups    = ["${aws_security_group.IGonzalez_SG.5.id}"]
  subnets            = ["${aws_subnet.IGonzalez_1c_Subnets.0.id}", "${aws_subnet.IGonzalez_1d_Subnets.id}"]

}