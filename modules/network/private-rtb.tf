resource "aws_route_table" "eks_private_rtb_1a" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_ngw_1a.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-private-rtb-1a"
    }
  )
}

resource "aws_route_table" "eks_private_rtb_1b" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_ngw_1b.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-private-rtb-1b"
    }
  )
}

resource "aws_route_table_association" "eks_private_rtb_association_1a" {
  subnet_id      = aws_subnet.eks_private_subnet_1a.id
  route_table_id = aws_route_table.eks_private_rtb_1a.id
}

resource "aws_route_table_association" "eks_private_rtb_association_1b" {
  subnet_id      = aws_subnet.eks_private_subnet_1b.id
  route_table_id = aws_route_table.eks_private_rtb_1b.id
}