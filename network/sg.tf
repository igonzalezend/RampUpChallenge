resource "aws_security_group" "IGonzalez_SG" {
    count = "${length(var.sg_names)}"
    vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC}"

    tags {
        Name = "${element(var.sg_names, count.index)}"
    }
}


