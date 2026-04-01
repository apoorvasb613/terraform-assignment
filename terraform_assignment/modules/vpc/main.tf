resource "aws_vpc" "main" {

  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnet_1" {

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_1
  availability_zone = "us-east-2a"

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-public-1"
  }
}

resource "aws_subnet" "public_subnet_2" {

  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_2
  availability_zone = "us-east-2b"

  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-public-2"
  }
}
