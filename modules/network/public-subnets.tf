resource "aws_subnet" "eks_public_subnet_2a" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 1)
  availability_zone       = "${data.aws_region.current.name}a"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-eks-public-subnet-2a"
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "eks_public_subnet_2b" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 2)
  availability_zone       = "${data.aws_region.current.name}b"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-eks-public-subnet-2b"
      "kubernetes.io/role/elb" = 1
    }
  )
}

resource "aws_subnet" "eks_public_subnet_2c" {
  vpc_id                  = aws_vpc.eks_vpc.id
  cidr_block              = cidrsubnet(var.cidr_block, 8, 3)
  availability_zone       = "${data.aws_region.current.name}c"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      Name                     = "${var.project_name}-eks-public-subnet-2c"
      "kubernetes.io/role/elb" = 1
    }
  )
}