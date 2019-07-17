variable "bucket_name" {
  type        = "string"
  description = "Bucket name to serve the Hexo content from"
  default     = "put-some-unique-name-here"
}

variable "tags" {
  type = "map"
  default = {
    Name = "Hexo Website"
  }
}

variable "aws_profile" {
  type    = "string"
  default = "default"
}

variable "aws_region" {
  type    = "string"
  default = "us-east-1"
}
