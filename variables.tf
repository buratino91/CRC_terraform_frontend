variable "aws_region" {
  description = "AWS region"
  type = string
  default = "us-east-1"
}

variable "cloudfront_domain_name" {
    type = string
    default = "d15qwabjkb771b.cloudfront.net"

}

variable "s3_origin_id" {
    type = string
    default = "glens-bucket.s3.us-east-1.amazonaws.com"
}

variable "bucket_domain_name" {
  type = string
  default = "glens-bucket.s3.us-east-1.amazonaws.com"
}