variable "ecs_instance_type" {
  default = "t2.micro"
}
variable "ecs_key_name" {
  default = "IvanGonzalezAWSKeyVirginia"
}

variable "ecs_cluster_name" {
  default = "IGonzalez_ECS_Cluster"
}
variable "ecs_lc_name" {
  default = "IGonzalez_ECS_LC"
}
variable "ecs_autoscaling_group" {
  default = "IGonzalez_ECS_Autoscaling_Group"
}
variable "ecs_placement_group" {
  default = "IGonzalez_ECS_Placement_Group"
}
variable "ecs_subnets" {
  type = "list"
}
variable "ecs_lb_frontend_target_group" {
  type = "string"
}




