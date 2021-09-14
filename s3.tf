resource "aws_s3_bucket" "my-s3-bucket" {
    bucket_prefix = var.bucket_prefix
    region = var.aws_region
    acl = var.acl

  tags = {
    "name" = "My bucket"
    Environment = "test"
  }
}