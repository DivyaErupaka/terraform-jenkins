resource "aws_instance" "terraform_server" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t3.micro"
  subnet_id              = "subnet-054fdabde679510ca"
  vpc_security_group_ids = ["sg-0309dd8bba1c5a8a2"]

  tags = {
    Name = "Terraform-Jenkins"
  }
}