resource "aws_s3_bucket" "resume_bucket" {
    arn                         = "arn:aws:s3:::glens-bucket"
    bucket                      = "glens-bucket"
    bucket_domain_name          = "glens-bucket.s3.amazonaws.com"
    bucket_prefix               = null
    bucket_regional_domain_name = "glens-bucket.s3.us-east-1.amazonaws.com"
    hosted_zone_id              = "Z3AQBSTGFYJSTF"
    id                          = "glens-bucket"
    object_lock_enabled         = false

    region                      = "us-east-1"
    tags                        = {}
    tags_all                    = {}


}
