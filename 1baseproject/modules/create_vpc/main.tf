// VPC Creation

resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  instance_tenancy = "default"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags = {
    Name = "tf-vpc"
  }
}

// IGW creation

resource "aws_internet_gateway" "tf-igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "tf-igw"
  }
}

// Subnet1 creation

resource "aws_subnet" "tf-public-subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "8.8.1.0/24"

   tags = {
    Name = "tf-public-subnet"
  }

}


// Subnet2 creation

resource "aws_subnet" "tf-private-subnet" {
  vpc_id = aws_vpc.main.id
  cidr_block = "8.8.2.0/24"

   tags = {
    Name = "tf-puprivateblic-subnet"
  }

}


// public route table
resource "aws_route_table" "tf-public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.tf-igw.id
  }

    tags = {
    Name = "tf-public-rt"
  }
}

// private route table
resource "aws_route_table" "tf-private-rt" {
  vpc_id = aws_vpc.main.id

  # route {
  #   cidr_block = aws_internet_gateway.tf-igw.id
  # }

    tags = {
    Name = "tf-private-rt"
  }
}

// Public subnet association

resource "aws_route_table_association" "public_subnet_assocaition" {
  subnet_id = aws_subnet.tf-public-subnet.id
  route_table_id = aws_route_table.tf-public-rt.id
}

// Private subnet association

resource "aws_route_table_association" "private_subnet_assocaition" {
  subnet_id = aws_subnet.tf-private-subnet.id
  route_table_id = aws_route_table.tf-private-rt.id
}