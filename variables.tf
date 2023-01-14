variable "aws_access_key"{
    default = "
}

variable "aws_secret_key"{
    default =  

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
