resource "aws_instance" "web" {
  ami                    = "ami-0453ec754f44f9a4a"      #change ami id for different region
  instance_type          = "t2.micro"
  key_name               = "eswar"              #change key name as per your setup
 
  tags = {
    Name = "yogi"
  }

  root_block_device {         #we can give custom value here 
    volume_size = 40
  }
}

resource "aws_security_group" "devops-project-veera" {
  name        = "shannu"
  description = "Allow TLS inbound traffic"

  ingress = [
    for port in [22, 80, 443, 8080, 9000, 3000, 8082, 8081, 3389] : {
      description      = "inbound rules"
      from_port        = port
      to_port          = port
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sunny"
  }
}