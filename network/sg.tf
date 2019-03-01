resource "aws_security_group" "IGonzalez_Jenkins_SG" {
    name = "IGonzalez Jenkins SG"
    vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"

    tags{
        Name = "IGonzalez_Jenkins_SG"
    }
}

resource "aws_security_group" "IGonzalez_BackEnd_SG" {
    name = "IGonzalez BackEnd SG"
    vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"

    tags{
        Name = "IGonzalez_BackEnd_SG"
    }
}

resource "aws_security_group" "IGonzalez_FrontEnd_SG" {
    name = "IGonzalez FrontEnd SG"
    vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"

    tags{
        Name = "IGonzalez_FrontEnd_SG"
    }
}

resource "aws_security_group" "IGonzalez_DB_SG" {
    name = "IGonzalez DB SG"
    vpc_id = "${data.aws_vpc.IGonzalez_APareja_VPC.id}"

    tags{
        Name = "IGonzalez_DB_SG"
    }
}