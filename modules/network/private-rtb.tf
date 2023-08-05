resource "aws_route_table" "eks_private_rtb_2a" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_ngw_2a.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-private-rtb-1a"
    }
  )
}

resource "aws_route_table" "eks_private_rtb_2b" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_ngw_2b.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-private-rtb-2b"
    }
  )
}

resource "aws_route_table" "eks_private_rtb_2c" {
  vpc_id = aws_vpc.eks_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_ngw_2c.id
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eks-private-rtb-2c"
    }
  )
}

resource "aws_route_table_association" "eks_private_rtb_association_2a" {
  subnet_id      = aws_subnet.eks_private_subnet_2a.id
  route_table_id = aws_route_table.eks_private_rtb_2a.id
}

resource "aws_route_table_association" "eks_private_rtb_association_2b" {
  subnet_id      = aws_subnet.eks_private_subnet_2b.id
  route_table_id = aws_route_table.eks_private_rtb_2b.id
}


resource "aws_route_table_association" "eks_private_rtb_association_2c" {
  subnet_id      = aws_subnet.eks_private_subnet_2c.id
  route_table_id = aws_route_table.eks_private_rtb_2c.id
}