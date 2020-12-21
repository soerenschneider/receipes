variable "aws_region" {
  type = string
}

variable "hostedzone_id" {
  description = "ID of the hosted zone to attach the host record to"
  type        = string
}

variable "domain_name" {
  description = "The domain name of the hosted zone"
  type        = string
}

variable "destination" {
  description = "Redirect target"
  type        = string
}
