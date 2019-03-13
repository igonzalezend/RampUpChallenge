resource "aws_db_instance" "IGonzalezDB" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "IGonzalez_DB"
  username             = "IGonzalez"
  password             = "Crackpokemon94!"
  parameter_group_name = "default.mysql5.7"
  publicly_accessible = true
  skip_final_snapshot = true
}
