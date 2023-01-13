provider "aws" {

    access_key = var.aws_access_key

    secret_key = var.aws_secret_key

    region = var.aws_region
}
#module "s3" {

    #source = "<path-to-S3-folder>"

    #bucket = "${var.bucket_name}"

#}
resource "aws_s3_bucket" "my-s3-bucket" {
  
   acl = var.acl

    versioning {

    enabled = var.versioning
  }

  tags = var.tags



  lifecycle_rule {

    id = "archive"

    enabled = true
  }

    transition {

      days = 30

      storage_class = "STANDARD_IA"

    }

    transition {

      days          = 60

      storage_class = "GLACIER"

    }

  }
  
  
  