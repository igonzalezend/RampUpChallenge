resource "aws_lb_target_group" "IGonzalez_Target_Group" {
    name = "${var.lb_tg_name}"
    port = 80
    protocol = "${var.lb_protocol}"
    vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"

    health_check {
        healthy_threshold = 3
        unhealthy_threshold = 2
        timeout = 3
        path = "/"
        interval = 5
    }

}
