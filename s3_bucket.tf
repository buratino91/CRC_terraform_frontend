resource "aws_s3_bucket" "resume_bucket" {
    bucket                      = "glens-bucket"
    bucket_prefix               = null
    object_lock_enabled         = false
    tags                        = {}
    tags_all                    = {}

}


    