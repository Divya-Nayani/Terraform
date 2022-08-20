provider "aws" {
region = "us-east-1"
access_key = "AKIAV6AU5MXHSYFKDDHQ"
secret_key = "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"
}

resource "aws_instance" "Instance1" {
ami = "ami-0022f774911c1d690"
instance_type = "t2.micro"
tags = {
"Name" = "web-server"
"environment"= "dev"
}
}
resource "aws_instance" "Instance2" {
ami = "ami-0022f774911c1d690"
instance_type = "t2.micro"
tags = {
"Name" = "app-server"
"environment" = "stage"
}
}



