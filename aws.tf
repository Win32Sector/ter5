provider "aws" {
  access_key = "${file(var.aws_access_key)}"
  secret_key = "${file(var.aws_secret_key)}"
  region     = "us-east-1"
}

data "aws_route53_zone" "selected" {
  name         = "devops.rebrain.srwx.net."
}

resource "aws_route53_record" "web1" {
  zone_id = "${data.aws_route53_zone.selected.zone_id}"
  name    = "sovvvest.devops.rebrain.srwx.net"
  type    = "A"
  ttl     = "300"
  records = ["${vscale_scalet.web1.public_address}"]
}
