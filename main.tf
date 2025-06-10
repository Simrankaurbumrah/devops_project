resource aws_key_pair deploy {
    key_name="key1"
    public_key=file("key1.pub")

} 
resource aws_default_vpc default {
}

resource "aws_default_security_group" "main" {
  vpc_id = aws_default_vpc.default.id

  ingress {
    protocol  = "tcp"
    from_port = 22
    to_port   = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
    cidr_blocks = ["0.0.0.0/0"]
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
# resource "aws_subnet" "main" {
#   vpc_id     = aws_default_vpc.default.id
#   cidr_block = "172.31.1.0/24"
 
# }
# 
resource aws_instance my_instance {
    for_each = tomap ({
      micro = "t2.micro"
      medium = "t2.medium"
    })
    ami = var.ec2_ami_id
    # count = 3
    instance_type = each.value
    key_name = aws_key_pair.deploy.key_name
    associate_public_ip_address = true
    user_data = file("nginx.sh")
    # vpc_security_group_ids = data.aws_subnet_ids.default.ids[0]
    security_groups = [aws_default_security_group.main.id]  
    subnet_id = "subnet-002b7a2e99cf5e81f"

    root_block_device {
      volume_size = var.aws_root_size

      volume_type = "gp3"
    }
    tags = {
      name = each.key
    }

}