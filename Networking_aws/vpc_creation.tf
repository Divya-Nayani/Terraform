resource "random_integer" "random" {
    min = 1
    max = 100
  
}
 resource "aws_vpc" "my-vpc" {
   cidr_block = var.vpc_cidr
   enable_dns_hostnames = true
   enable_dns_support = true

   tags = {
       Name = "my-vpc"
   }
 }