provider "aws" {
 region = "ap-south-1"
}

resource "aws_instance" "kelly" {
  ami = "ami-0f5ee92e2d63afc18"
instance_type = "t2.micro"

tags = {
  Name = "terraform"
}
}

resource "aws_key_pair" "dev" {
  key_name = "key"
  public_key = file("./key.pub")
}

resource "aws_vpc" "maha" {
  cidr_block = "10.10.0.0/16"
  tags = {
    Name = "my vpc"
  } 
}

resource "aws_subnet" "subnet1" {
  cidr_block = "10.10.1.0/24"
  vpc_id = "vpc-0ffb248944fb413bf"
  tags = {
    Name = "s1"
  }
}

resource "aws_subnet" "subnet2" {
  cidr_block = "10.10.2.0/24"
  vpc_id = "vpc-0ffb248944fb413bf"
  tags = {
    Name = "s2"
  }
}

