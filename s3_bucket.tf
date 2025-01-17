resource "aws_s3_bucket" "resume_bucket" {
    bucket                      = "glens-bucket"
    #bucket_domain_name          = var.bucket_domain_name
    bucket_prefix               = null
    #bucket_regional_domain_name = var.bucket_regional_domain_name
    #hosted_zone_id              = "Z3AQBSTGFYJSTF"
    #id                          = "glens-bucket"
    object_lock_enabled         = false
   
    tags                        = {}
    tags_all                    = {}

}

# resource "aws_s3_bucket_versioning" "resume_bucket_versioning" {
#     bucket = aws_s3_bucket.resume_bucket.id
#     versioning_configuration {
#         status = "Disabled"
#         mfa_delete = "Disabled"
#     }
# }

# resource "aws_s3_bucket_server_side_encryption_configuration" "resume_bucket_encryption" {
#     bucket = aws_s3_bucket.resume_bucket.id
#     rule{
#             bucket_key_enabled = false
#             apply_server_side_encryption_by_default {
#                 kms_master_key_id = null
#                 sse_algorithm     = "AES256"
#             }
#         }
# }
    