resource "aws_ecs_cluster" "ECS" {
  name = "IGonzalez_ECS_Cluster"
}
resource "aws_launch_configuration" "launch" {
  name = "IGonzalez_ECS"
  image_id             = "${data.aws_ami.ecs_ami.id}"
  instance_type        = "t2.micro"
  key_name             = "IvanGonzalez"
  iam_instance_profile = "${aws_iam_instance_profile.ecs.id}"

  # aws_launch_configuration can not be modified.
  # Therefore we use create_before_destroy so that a new modified aws_launch_configuration can be created 
  # before the old one get's destroyed. That's why we use name_prefix instead of name.
  lifecycle {
    create_before_destroy = true
  }
}