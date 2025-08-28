provider "aws" {
  region = var.region
}

resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "ecs-vpc"
  }
}

resource "aws_subnet" "public_a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_a_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_a
  tags = {
    Name = "ecs-public-subnet-a"
  }
}

resource "aws_subnet" "public_b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_b_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_b
  tags = {
    Name = "ecs-public-subnet-b"
  }
}

resource "aws_subnet" "public_c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.public_subnet_c_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone_c
  tags = {
    Name = "ecs-public-subnet-c"
  }
}
