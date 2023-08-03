resource "aws_subnet" "eks_private_subnet_1a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    local.tags,
    {
      Name                               = "eks-private-subnet-1a"
      "kubernetes.io/role/internal-elb	" = 1
    }
  )
}

resource "aws_subnet" "eks_private_subnet_1b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    local.tags,
    {
      Name                               = "eks-private-subnet-1b"
      "kubernetes.io/role/internal-elb	" = 1
    }
  )
}