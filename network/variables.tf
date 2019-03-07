variable "availability_zone" {
  default = ["us-east-1c", "us-east-1d"]
}

variable "az1c_subnet_names" {
  default = [
    "IGonzalez_Public_Subnet_1c",
    "IGonzalez_Private_Subnet_1c", 
    "IGonzalez_Bastion_Subnet_1c"]
}

variable "az1d_subnet_name" {
  default = "IGonzalez_Public_Subnet_1d"
}

variable "az1c_cidr_blocks" {
  type = "list"
}

variable "az1d_cidr_block" {
  type = "string"
}

variable "frontend_open_ports" {
  type = "list"
}

variable "sg_names" {
  default = [
    "IGonzalez_Jenkins_SG", 
    "IGonzalez_BackEnd_SG", 
    "IGonzalez_FrontEnd_SG", 
    "IGonzalez_DB_SG", 
    "IGonzalez_ECS_SG", 
    "IGonzalez_ELB_SG"]
}

variable "lb_name" {
  default = "IGonzalezLB"
}

variable "lb_ports" {
  type = "list"
}

variable "lb_protocol" {
 default = "HTTP" 
}

variable "lb_action" {
  default = "forward"
}

variable "lb_tg_name" {
  default = "IGonzalez-LB-TG"
}


