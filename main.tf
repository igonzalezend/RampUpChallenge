module "network" {
  source = "./network"

  vpc_cidr_block = "10.0.0.0/16"

  az1c_cidr_blocks = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  az1d_cidr_block = "10.0.7.0/24"
  frontend_open_ports = ["80", "3000", "3030"]
  lb_ports = ["80", "3030"]
  lb_ports_1 = ["80", "3000"]
}
module "ecs" {
  source = "./ecs"

  ecs_subnets = ["${module.network.public_subnet_ids}", "${module.network.private_subnet_id}"]
  ecs_lb_frontend_target_group = "${module.network.frontend_target_group_arn}"
  ecs_lb_backend_target_group = "${module.network.backend_target_group_arn}"
}
module "db" {
  source = "./db"
}
module "jenkins" {
  source = "./jenkins"
}

