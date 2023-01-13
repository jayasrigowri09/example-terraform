provider "aws" {

    access_key = "${var.aws_access_key}"

    secret_key = "${var.aws_access_key}"

    region = "${var.aws_region}"
}
module "s3" {

    source = "<path-to-S3-folder>"

    bucket = "${var.bucket_name}"

}
resource "aws_s3_bucket" "create-s3-bucket" {
  
   acl = "${var.acl}"

  lifecycle_rule {

    id = "archive"

    enabled = true

    transition {

      days = 30

      storage_class = "STANDARD_IA"

    }

    transition {

      days          = 60

      storage_class = "GLACIER"

    }

  }
  
   versioning {

    enabled = "${var.versioning}"
  }