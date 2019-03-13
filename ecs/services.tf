resource "aws_ecs_service" "IGonzalez_ECS_Jenkins_Service" {
  name = "IGonzalez_ECS_Jenkins_Service"
  cluster = "${aws_ecs_cluster.IGonzalez_ECS_Cluster.id}"
  task_definition = "${aws_ecs_task_definition.IGonzalez_ECS_TD_Jenkins.arn}"
  desired_count = 1

  depends_on = ["data.aws_iam_role.ecsInstanceRole"]
}
resource "aws_ecs_service" "IGonzalez_ECS_Frontend_Service" {
  name = "IGonzalez_ECS_Frontend_Service"
  cluster = "${aws_ecs_cluster.IGonzalez_ECS_Cluster.id}"
  task_definition = "${aws_ecs_task_definition.IGonzalez_ECS_TD_Frontend.arn}"
  desired_count = 2

  depends_on = ["data.aws_iam_role.ecsInstanceRole"]

  load_balancer {
      target_group_arn = "${var.ecs_lb_frontend_target_group}"
      container_name = "Frontend"
      container_port = 3030
  }

}
resource "aws_ecs_service" "IGonzalez_ECS_Backend_Service" {
  name = "IGonzalez_ECS_Backend_Service"
  cluster = "${aws_ecs_cluster.IGonzalez_ECS_Cluster.id}"
  task_definition = "${aws_ecs_task_definition.IGonzalez_ECS_TD_Backend.arn}"
  desired_count = 1

  depends_on = ["data.aws_iam_role.ecsInstanceRole"]
}