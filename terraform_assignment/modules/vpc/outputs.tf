output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet1_id" {
  value = aws_subnet.public_subnet_1.id
}

output "subnet2_id" {
  value = aws_subnet.public_subnet_2.id
}
