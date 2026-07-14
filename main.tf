resource "aws_instance" "terraform_server" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-054fdabde679510ca"
  vpc_security_group_ids = ["sg-0c41c8bd04c2741c2"]

  tags = {
    Name = "Terraform-Jenkins"
  }
}