resource "aws_ecs_cluster" "IGonzalez_ECS_Cluster" {
  name = "${var.ecs_cluster_name}"
}