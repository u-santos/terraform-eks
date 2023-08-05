resource "aws_subnet" "eks_private_subnet_2a" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 4)
  availability_zone = "${data.aws_region.current.name}a"

  tags = merge(
    var.tags,
    {
      Name                               = "${var.project_name}-eks-private-subnet-2a"
      "kubernetes.io/role/internal-elb	" = 1
    }
  )
}

resource "aws_subnet" "eks_private_subnet_2b" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 5)
  availability_zone = "${data.aws_region.current.name}b"

  tags = merge(
    var.tags,
    {
      Name                               = "${var.project_name}-eks-private-subnet-2b"
      "kubernetes.io/role/internal-elb	" = 1
    }
  )
}

resource "aws_subnet" "eks_private_subnet_2c" {
  vpc_id            = aws_vpc.eks_vpc.id
  cidr_block        = cidrsubnet(var.cidr_block, 8, 6)
  availability_zone = "${data.aws_region.current.name}c"

  tags = merge(
    var.tags,
    {
      Name                               = "${var.project_name}-eks-private-subnet-2c"
      "kubernetes.io/role/internal-elb	" = 1
    }
  )
}