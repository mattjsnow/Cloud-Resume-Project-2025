variable "aws_region" {
  description = "AWS region to deploy resources in"
  default     = "us-east-1"
}

variable "domain_name" {
  description = "https://msnow.cloud"
  type        = string
  default     = "msnow.cloud"
}

variable "acm_certificate_arn" {
  description = "arn:aws:acm:us-east-1:017140923994:certificate/e1c9c3fa-b467-4483-916b-081e95269dca"
  type        = string
}
