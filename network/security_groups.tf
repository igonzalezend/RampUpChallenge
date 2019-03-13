resource "aws_security_group" "IGonzalez_SG" {
    count = "${length(var.sg_names)}"
    vpc_id = "${aws_vpc.IGonzalez_VPC.id}"

    tags {
        Name = "${element(var.sg_names, count.index)}"
    }
}