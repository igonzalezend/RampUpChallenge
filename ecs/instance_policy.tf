resource "aws_iam_role" "ECS_role" {

  name = "IGonzalez_ecs_instance_role"  

  assume_role_policy = "${data.aws_iam_policy_document.ecs-service-policy.json}"
}

resource "aws_iam_instance_profile" "ecs" {
  name = "IGonzalez_ecs_instance_profile"
  path = "/"
  role = "${aws_iam_role.ECS_role.name}"
}

resource "aws_iam_role_policy_attachment" "ecs_ec2_role" {
  role       = "${aws_iam_role.ECS_role.id}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}
