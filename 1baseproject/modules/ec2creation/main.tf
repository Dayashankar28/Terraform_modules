data "aws_ami" "ubuntu" {
  owners = ["099720109477"]
  most_recent = true
  
  filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240801"]
    }

}

data "aws_security_group" "default" {
  id = "sg-05e0eb7b7e1f52034"
}

resource "tls_private_key" "rsa_pem_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = tls_private_key.rsa_pem_key.public_key_openssh
}

resource "local_file" "foo" {
  content  = tls_private_key.rsa_pem_key.private_key_openssh
  filename = var.keypath
}


resource "aws_instance" "create_ec2" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = aws_key_pair.deployer.key_name
  vpc_security_group_ids = ["vpc-0476d4dbb3b95edd1"]

  tags = {
    Name = "tf-example"
  }

}


