resource "aws_vpc" "main" {
  cidr_block = var.cidr

  tags = {
    Name = "ecs-vpc"
  }
}

resource "aws_subnet" "pub-subnets" {
  count                   = length(var.azs)
  vpc_id                 = aws_vpc.main.id
  availability_zone       = var.azs[count.index]
  cidr_block              = var.subnets-ip[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-subnet-${count.index}"
  }
}

resource "aws_internet_gateway" "i-gateway" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "ecs-igtw"
  }
}

resource "aws_security_group" "security-group" {
  name        = "ecs-sg"
  description = "Security group"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  tags = {
    Name = "ecs-security-group"
  }
}
