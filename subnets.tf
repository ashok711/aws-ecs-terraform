resource "aws_subnet" "public" {
  count = length(var.subnet_cidrs_public)

  vpc_id = aws_vpc.vpc.id
  cidr_block = var.subnet_cidrs_public[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
      Name = length(var.pub_subnet_name_tag)
  }
}

resource "aws_subnet" "private" {
  count = length(var.subnet_cidrs_private)

  vpc_id = aws_vpc.vpc.id
  cidr_block = var.subnet_cidrs_private[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
      Name = length(var.pvt_subnet_name_tag)
  }
}