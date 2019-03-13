resource "aws_ecs_task_definition" "IGonzalez_ECS_TD_Jenkins" {
  family = "IGonzalez_ECS_TD_Jenkins"
  container_definitions = "${data.template_file.jenkins_task_config.rendered}"
}
resource "aws_ecs_task_definition" "IGonzalez_ECS_TD_Frontend" {
  family = "IGonzalez_ECS_TD_Frontend"
  container_definitions = "${data.template_file.frontend_task_config.rendered}"
}
resource "aws_ecs_task_definition" "IGonzalez_ECS_TD_Backend" {
  family = "IGonzalez_ECS_TD_Backend"
  container_definitions = "${data.template_file.backend_task_config.rendered}"
}