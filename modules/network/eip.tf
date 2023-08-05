resource "aws_eip" "eks_ngw_eip_2a" {
  domain = "vpc"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eip-2a"
    }
  )
}

resource "aws_eip" "eks_ngw_eip_2b" {
  domain = "vpc"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eip-2b"
    }
  )
}

resource "aws_eip" "eks_ngw_eip_2c" {
  domain = "vpc"

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-eip-2c"
    }
  )
}