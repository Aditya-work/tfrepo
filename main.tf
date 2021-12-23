provider "aws" {
  region = "us-west-2"

}

terraform {
  backend "s3" {
    bucket = "tfjk1"
    encrypt = true
    dynamodb_table = "tftab1"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}



resource "aws_vpc" "demo1" {
  cidr_block = "10.5.0.0/16"
  tags = {
      Name = "VPC1"
  }
  
}
