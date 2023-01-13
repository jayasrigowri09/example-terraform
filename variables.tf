variable "aws_access_key"{
    default = "AKIATYUWFJ4AOCB2HMPB"
}

variable "aws_secret_access_key"{
    default =  "aRNvcS50oyDsLBFywum3bahotXc8TtXeLsF15DHL"
}

variable "aws_region" {
    default     = "us-east-2"
}

#variable "bucket_name"{
 #   default = "my-s3-bucket09"
#}

variable "tags" {
    default     = {
    environment = "DEV"
    enabled   = "true"
    }
}

variable "versioning" {
    default     = true
}

variable "acl" {
    default     = "private"
}