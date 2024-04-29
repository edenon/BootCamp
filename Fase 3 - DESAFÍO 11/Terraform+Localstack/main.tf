data "aws_region" "current" {}

resource "aws_s3_bucket" "bucket" {
  bucket = "mybucket"
}

resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t3.micro"

  tags = {
    Name       = "webserver-${count.index}"
    Enviroment = "local"
  }
}

resource "aws_route53_zone" "primary" {
  name = "daveops.sh"
}

resource "aws_route53_record" "web" {
  count   = 2
  zone_id = aws_route53_zone.primary.id
  name    = "webserve-${count.index}"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web[count.index].public_ip]

}