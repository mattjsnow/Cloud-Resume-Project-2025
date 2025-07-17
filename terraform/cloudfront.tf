resource "aws_cloudfront_origin_access_control" "site" {
  name                              = "site-oac"
  description                       = "OAC for Cloud Resume Project"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

resource "aws_cloudfront_distribution" "site" {
  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html"

  aliases = ["msnow.cloud"]

origin {
  domain_name = "cloudresumems77.s3.amazonaws.com"
  origin_id   = "site-s3"

  origin_access_control_id = aws_cloudfront_origin_access_control.site.id
}


 default_cache_behavior {
  allowed_methods  = ["GET", "HEAD"]
  cached_methods   = ["GET", "HEAD"]
  target_origin_id = "site-s3"  

  viewer_protocol_policy = "redirect-to-https"

  forwarded_values {
    query_string = false
    cookies {
      forward = "none"
    }
  }
}


  viewer_certificate {
    acm_certificate_arn = "arn:aws:acm:us-east-1:017140923994:certificate/e1c9c3fa-b467-4483-916b-081e95269dca"
    ssl_support_method  = "sni-only"
    minimum_protocol_version = "TLSv1.2_2021"
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  tags = {
    Project = "Cloud Resume Project"
  }
}
