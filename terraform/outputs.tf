output "s3_bucket_name" {
  value = "${aws_s3_bucket.serverless_hexo.bucket}"
}

output "website_url" {
  value = "${aws_s3_bucket.serverless_hexo.website_endpoint}"
}
