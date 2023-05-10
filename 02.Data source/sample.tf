data "aws_ami" "centos" {
  owners      = ["973714476881"]
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
}

variable "instance_type"  {
  default= "t3.micro"
}

data "aws_security_group" "Allow All" {
  name = "Allow All"
}


resource "aws_instance" "frontend" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "var.instance_type"
  vpc_security_group_ids = [ data.aws_security_group.Allow All.id ]

  tags = {
    Name = "frontend"
  }
}


resource "aws_route53_record" "frontend" {
  zone_id = "Z07723241NASCD733XBTT"
  name    = "frontend-dev.devops2023sk.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mongodb" {
  ami           = data.aws_ami.centos.image_id
  instance_type = "var.instance_type"
  vpc_security_group_ids = [ data.aws_security_group.Allow All.id ]

  tags = {
    Name = "mongodb"
  }
}
resource "aws_route53_record" "mongodb" {
  zone_id = "Z07723241NASCD733XBTT"
  name    = "mongodb-dev.devops2023sk.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}