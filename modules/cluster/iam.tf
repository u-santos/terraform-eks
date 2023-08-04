resource "aws_iam_role" "cluster_eks_iam_role" {
  name = "${var.project_name}-cluster-eks-iam-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = "1"
        Principal = {
          Service = "eks.amazonaws.com"
        }
      }
    ]

  })

  tags = merge(
    var.tags,
    {
      Name = "${var.project_name}-cluster-eks-iam-role"
    }
  )
}

resource "aws_iam_role_policy_attachment" "cluster_eks_iam_role_attachment" {
  role       = aws_iam_role.cluster_eks_iam_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}