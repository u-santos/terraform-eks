output "subnet_pub_2a" {
  value = aws_subnet.eks_public_subnet_2a.id
}

output "subnet_pub_2b" {
  value = aws_subnet.eks_public_subnet_2b.id
}

output "subnet_pub_2c" {
  value = aws_subnet.eks_public_subnet_2c.id
}

output "subnet_priv_2a" {
  value = aws_subnet.eks_private_subnet_2a.id
}

output "subnet_priv_2b" {
  value = aws_subnet.eks_private_subnet_2b.id
}

output "subnet_priv_2c" {
  value = aws_subnet.eks_private_subnet_2c.id
}