resource "aws_lb_target_group" "IGonzalez_Frontend_Target_Group" {
    name = "IGonzalez-Frontend-Target-Group"
    port = 80
    protocol = "${var.lb_protocol}"
    vpc_id = "${aws_vpc.IGonzalez_VPC.id}"

    health_check {
        healthy_threshold = 3
        unhealthy_threshold = 2
        timeout = 3
        path = "/"
        interval = 5
    }

}
resource "aws_lb_target_group" "IGonzalez_Backend_Target_Group" {
    name = "IGonzalez-Backend-Target-Group"
    port = 80
    protocol = "${var.lb_protocol}"
    vpc_id = "${aws_vpc.IGonzalez_VPC.id}"

    health_check {
        healthy_threshold = 3
        unhealthy_threshold = 2
        timeout = 3
        path = "/"
        interval = 5
    }

}