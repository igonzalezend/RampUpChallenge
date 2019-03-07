resource "aws_launch_configuration" "IGonzalez_ECS_Launch_Def" {
  name = "IGonzalez_ECS"
  image_id             = "${data.aws_ami.ecs_ami.id}"
  instance_type        = "${var.ecs_instance_type}"
  key_name             = "${var.ecs_key_name}"
  iam_instance_profile = "${aws_iam_instance_profile.ecs.id}"

  associate_public_ip_address = "true"

  user_data                   =  "${template_file.ecs-launch-configuration-user-data.rendered}"



  lifecycle {
    create_before_destroy = true
  }

}

resource "template_file" "ecs-launch-configuration-user-data" {
    template = "${file("${path.module}/user-data.tpl")}"

    vars {
        ecs-cluster-name = "${var.ecs_cluster_name}"
    }
}