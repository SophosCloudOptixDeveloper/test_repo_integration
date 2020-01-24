provider "aws" {
  access_key = "AKIAQZGH43ZEVAHRNER6"
  secret_key = "UCEBsgiWfHrfDllPNR7IkD6/Z3/Iq3mPwEeaJr6W"
  region     = "us-west-2"
}

resource "aws_s3_bucket" "example" {

  bucket = "terraform-getting-started-guide"
  acl    = "private"
}

resource "aws_s3_bucket" "example2" {

  bucket = "mah-bucket"
  acl    = "private"
}

resource "aws_db_instance" "default" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
}

terraform {
  required_version = ">= 0.11.0"
}