module "network" {
  source = "./network"

  public_cidr_blocks = ["10.0.4.0/24", "10.0.5.0/24", "10.0.7.0/24"]
  private_cidr_block = "10.0.6.0/24"
  frontend_open_ports = ["80", "3000", "3030"]
}

module "ecs" {
  source = "./ecs"
}

