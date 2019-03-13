resource "aws_route_table" "IGonzalez_RT_RC" {

    vpc_id = "${aws_vpc.IGonzalez_VPC.id}"

    route {
        cidr_block = "10.0.0.0/0"
        gateway_id = "${aws_internet_gateway.IGonzalez_IG.id}"
    }
}

resource "aws_route_table_association" "IGonzalez_1c_Subnet" {
    subnet_id      = "${aws_subnet.IGonzalez_1c_Subnets.0.id}"
    route_table_id = "${aws_route_table.IGonzalez_RT_RC.id}"
}   

resource "aws_route_table_association" "IGonzalez_1d_Subnet" {
    subnet_id      = "${aws_subnet.IGonzalez_1d_Subnets.id}"
    route_table_id = "${aws_route_table.IGonzalez_RT_RC.id}"
}

resource "aws_route_table_association" "IGonzalez_1c_Bastion_Subnet" {
    subnet_id      = "${aws_subnet.IGonzalez_1c_Subnets.2.id}"
    route_table_id = "${aws_route_table.IGonzalez_RT_RC.id}"
}   

resource "aws_route_table_association" "IGonzalez_1c_Private_Subnet" {
    subnet_id      = "${aws_subnet.IGonzalez_1c_Subnets.1.id}"
    route_table_id = "${aws_route_table.IGonzalez_RT_RC.id}"
}
