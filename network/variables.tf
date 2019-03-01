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
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.7.0/24"]
}

variable "private_cidr_block" {
  default = "10.0.6.0/24"
}

variable "frontend_open_ports" {
  default = ["80", "3000", "3030"]
}
