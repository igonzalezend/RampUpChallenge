data "aws_ami" "ecs_ami" {

  owners = ["amazon"]
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn-ami-*-amazon-ecs-optimized"]
  }
}

data "aws_iam_policy_document" "ecs-service-policy" {
   statement {
       actions = ["sts:AssumeRole"]

       principals {
           type        = "Service"
           identifiers = ["ec2.amazonaws.com"]
       }
   }
}

data "aws_iam_role" "ecsInstanceRole" {
  name = "ecsInstanceRole"
}

data "template_file" "frontend_task_config" {
  template = "${file("${cccc}/task_definition/frontend_service.json")}"
}
data "template_file" "backend_task_config" {
  template = "${file("${path.module}/task_definition/backend_service.json")}"
}



