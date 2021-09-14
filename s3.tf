resource "aws_s3_bucket" "terraform" {
  bucket = "my-tf-bucket"
  acl = "private"

  tags = {
    "name" = "My bucket"
    Environment = "test"
  }
}