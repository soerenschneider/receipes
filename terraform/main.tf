provider "aws" {
  region = var.aws_region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

resource "aws_route53_record" "yummy" {
  zone_id = var.hostedzone_id
  name    = "yummy.${var.domain_name}"
  type    = "CNAME"
  ttl     = 86400

  records = [
    var.destination,
  ]
}
