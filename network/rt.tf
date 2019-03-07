resource "aws_route_table" "IGonzalez_RT" {

    vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"

    route {
        cidr_block = "10.0.0.0/0"
        gateway_id = "${data.aws_internet_gateway.IGonzalez_APareja_IG.id}"
    }
}

resource "aws_route_table_association" "mesh-vpc-route-table-association1" {
    subnet_id      = "${aws_subnet.IGonzalez_1c_Subnets.0.id}"
    route_table_id = "${aws_route_table.IGonzalez_RT.id}"
}   

resource "aws_route_table_association" "mesh-vpc-route-table-association2" {
    subnet_id      = "${aws_subnet.IGonzalez_1d_Subnets.id}"
    route_table_id = "${aws_route_table.IGonzalez_RT.id}"
}
