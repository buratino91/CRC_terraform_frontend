resource "aws_cloudfront_distribution" "s3_distribution" {
    aliases = ["my-b4d3-resume.com"]

    origin {
        domain_name = var.s3_origin_id
        origin_id   = var.s3_origin_id
    }

    enabled = true
    default_root_object = "index_v2.html"

    default_cache_behavior {
      cache_policy_id = "658327ea-f89d-4fab-a63d-7e88639e58f6"
      allowed_methods = ["GET", "HEAD"]
      target_origin_id = var.s3_origin_id
      cached_methods = ["GET", "HEAD"]

      viewer_protocol_policy = "redirect-to-https"
      
    }
    
    restrictions {
      geo_restriction {
        restriction_type = "none"
        locations = []
      }
    }

    viewer_certificate {
        acm_certificate_arn            = "arn:aws:acm:us-east-1:220664688409:certificate/763b21c5-1350-449f-8e9b-139b82517e03"
        cloudfront_default_certificate = false
        iam_certificate_id             = null
        minimum_protocol_version       = "TLSv1.2_2021"
        ssl_support_method             = "sni-only"
    }
    
    
}