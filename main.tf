provider "aws" {
  region = "us-east-1"
}
# Creating VPC,name, CIDR and Tags
resource "aws_vpc" "my-vpc" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  tags = {
    Name = "my-vpc"
  }
}

# Creating Public Subnets in VPC
resource "aws_subnet" "subnets-public-1" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "subnets-public-1"
  }
}

resource "aws_subnet" "subnets-public-2" {
  vpc_id                  = aws_vpc.my-vpc.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "subnets-public-2"
  }
}


