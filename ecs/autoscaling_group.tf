
resource "aws_autoscaling_group" "IGonzalez_ECS_Autoscaling_Group" {
  name                      = "${var.ecs_autoscaling_group}"
  max_size                  = 3
  min_size                  = 2
  force_delete              = true
  launch_configuration      = "${aws_launch_configuration.IGonzalez_ECS_Launch_Def.id}"
  vpc_zone_identifier       = ["${var.ecs_subnets}"]

  lifecycle {
    create_before_destroy = true
  }
}

