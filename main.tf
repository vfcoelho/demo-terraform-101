terraform {
  required_version = ">= 0.12.0"
}

variable "region" {
  default = "us-east-1"
}

variable "private_key" {}
variable "public_key" {}
variable "ami" {}
variable "subnet_id" {}
variable "vpc_security_group_id" {}
variable "identity" {}

variable "num_webs" {
  default = "1"
}

provider "aws" {
  region = var.region
}

module "server" {
  source = "./server"

  private_key           = var.private_key
  public_key            = var.public_key
  num_webs              = var.num_webs
  ami                   = var.ami
  subnet_id             = var.subnet_id
  vpc_security_group_id = var.vpc_security_group_id
  identity              = var.identity
}

output "public_ip" {
  value = module.server.public_ip
}

output "public_dns" {
  value = module.server.public_dns
}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "zx-ventures"
    workspaces {
      name = "demo-terraform-101-jpgrace"
    }
  }
}
