provider "aws" {
  region  = "ap-south-1"
  profile = "configs"
}
resource "aws_instance" "ec-2-server" {
  ami                    = ami-0ced6a024bb18ff2e
  instance_type          = t3.micro
  vpc_security_group_ids = ["sg-02355d0623175c9ad", aws_security_group.sg-webserver.id]
}
