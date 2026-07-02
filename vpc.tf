resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  enable_dns_support = true
  enable_dns_hostnames = true

  assign_generated_ipv6_cidr_block = false
  tags = {
    Name = "${var.project_name}-vpc"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "main" {

count = length(var.vpc_additional_cidrs)
vpc_id = aws_vpc.main.id
  cidr_block = var.vpc_additional_cidrs[count.index]
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "${var.project_name}-igw"
  }
}


resource "aws_subnet" "public" {
  count = length(var.public_subnets)
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnets[count.index].cidr
  availability_zone = var.public_subnets[count.index].availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnets[count.index].name
  }
}