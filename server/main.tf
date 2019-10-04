variable "ami" {}
variable "num_webs" {}
variable "subnet_id" {}
variable "vpc_security_group_id" {}
variable "identity" {}
variable "private_key" {}
variable "public_key" {}

resource "aws_key_pair" "training" {
  key_name   = "${var.identity}-key"
  public_key = "${base64decode(var.public_key)}"
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = "t3a.small"
  count         = var.num_webs

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.vpc_security_group_id]

  key_name = aws_key_pair.training.id

  tags = {
    Name       = "demo-terraform-101-${var.identity} web ${count.index + 1}/${var.num_webs}"
    Identity   = var.identity
    Created-by = "Terraform"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = base64decode(var.private_key)
    host        = "${aws_instance.web[count.index].public_ip}"
  }

  provisioner "file" {
    source      = "assets"
    destination = "/tmp/"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo sh /tmp/assets/setup-web.sh",
    ]
  }
}

output "public_ip" {
  value = [aws_instance.web.*.public_ip]
}

output "public_dns" {
  value = [aws_instance.web.*.public_dns]
}

