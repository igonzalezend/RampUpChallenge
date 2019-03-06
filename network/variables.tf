variable "availability_zone" {
  default = ["us-east-1c", "us-east-1d"]
}

variable "public_subnet_names" {
  default = ["IGonzalez_Public_Subnet_1c", "IGonzalez_Public_Subnet_1d", "IGonzalez_Bastion_Subnet_1c"]
}

variable "private_subnet_name" {
  default = "IGonzalez_Private_Subnet_1c"
}

variable "public_cidr_blocks" {
  type = "list"
}

variable "private_cidr_block" {
  type = "string"
}

variable "frontend_open_ports" {
  type = "list"
}

variable "sg_names" {
  default = ["IGonzalez_Jenkins_SG", "IGonzalez_BackEnd_SG", "IGonzalez_FrontEnd_SG", "IGonzalez_DB_SG", "IGonzalez_ECS_SG"]
}

