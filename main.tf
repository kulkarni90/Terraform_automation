provider "aws" {
  region = "ap-south-1"
}

resource "aws_default_vpc" "default" {}

resource "aws_instance" "bastion" {
       ami                                       = "ami-073c8c0760395aab8"
       instance_type                       = "t2.micro"
       security_groups                    = [aws_security_group.bastion-sg.name]
       key_name                             = aws_key_pair.bas_key.key_name
      associate_public_ip_address = true

  tags = {
    Name = "host_server"
  }
}
  #user_data = "${file("script.sh")}"

resource "aws_key_pair" "bas_key" {
    key_name   = "bas_key"
    public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC+WHm7TksIznUHuWYthtsYEb8I7ALF2bCWHLmwK0QH96tvVmCGbJTPPXwc91nfGu5DXmIVVZvAHmGSA9tzSkiMAtuwYednco0dgFTsYHGqp1Spza1nMt1NqaISC5I4JFkjTP/Pm/nniKzK9WeLDign9wPERvSj05aU1SapujA70ZwOw0/v0LjtdXYJIQiXSA8ahh1ofhIM3e9MO84VrAvnJVy/5XBLu2n0jElJVSTV6ft/TJYm65Vco6WDBtBgyCO33oq8WDaRtaAvFRi6rcsO6jQMtqZHmc2KtjILTuUoJo6aRuD9UMezdWes7oUr+evGUOxZPIRmfgJqbAv/97x7j3mpPWL4vE4EttEVD7neu7VDgKuRrEz1SV6VaMlhOSbjIQHfKrDwosS92d9dBb00Z8SzgbR4BILYCQRh7/2aUbYrFO2IGw2UTf7Nf06sdSD4kMz/iJxsM969BENFTrkYoCOWHoKpVBhgcRVxmtwTV37aek9gyna1fuc92Tj04nc= phani@LenovaS340"
}