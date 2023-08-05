resource "aws_nat_gateway" "eks_ngw_2a" {
  allocation_id = aws_eip.eks_ngw_eip_2a.id
  subnet_id     = aws_subnet.eks_public_subnet_2a.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-2a"
    }
  )
}

resource "aws_nat_gateway" "eks_ngw_2b" {
  allocation_id = aws_eip.eks_ngw_eip_2b.id
  subnet_id     = aws_subnet.eks_public_subnet_2b.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-2b"
    }
  )
}

resource "aws_nat_gateway" "eks_ngw_2c" {
  allocation_id = aws_eip.eks_ngw_eip_2c.id
  subnet_id     = aws_subnet.eks_public_subnet_2c.id

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-ngw-2c"
    }
  )
}