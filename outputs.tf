output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet1_id" {
  value = aws_subnet.subnet1.id
}

output "subnet2_id" {
  value = aws_subnet.subnet2.id
}

output "internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "ec2_instance_id" {
  value = aws_instance.web.id
}

output "load_balancer_dns" {
  value = aws_lb.web_lb.dns_name
}