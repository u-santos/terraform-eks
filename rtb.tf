resource "aws_route_table" "eks_public_rtb" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_igw.id
  }

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-eks-public-rtb"
    }
  )
}


resource "aws_route_table_association" "eks_rtb_association_1a" {
  subnet_id      = aws_subnet.eks_public_subnet_1a.id
  route_table_id = aws_route_table.eks_public_rtb.id
}

resource "aws_route_table_association" "eks_rtb_association_1b" {
  subnet_id      = aws_subnet.eks_public_subnet_1b.id
  route_table_id = aws_route_table.eks_public_rtb.id
}