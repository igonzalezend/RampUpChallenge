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
           identifiers = ["ecs.amazonaws.com"]
       }
   }
}