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
    Name = "pub-subnets"
 }
}

resource "aws_internet_gateway" "i-gateway" {
 vpc_id = aws_vpc.main.id

 tags = {
    Name = "ecs-igtw"
 }
}
