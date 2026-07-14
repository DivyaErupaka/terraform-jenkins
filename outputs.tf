output "instance_id" {
  value = aws_instance.terraform-server.id
}

output "public_ip" {
  value = aws_instance.terraform-server.public_ip
}