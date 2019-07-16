resource "aws_s3_bucket" "serverless_hexo" {
  bucket = "${var.bucket_name}"
  acl    = "private"
  tags   = "${merge(var.tags, map("Name", "Serverless Hexo Demo Website"))}"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement":[
    {
	    "Sid": "PublicReadGetObject",
      "Effect": "Allow",
	    "Principal": "*",
      "Action": [
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::${var.bucket_name}"
      ]
    },
    {
	    "Sid": "PublicReadGetObject",
      "Effect": "Allow",
	    "Principal": "*",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": [
        "arn:aws:s3:::${var.bucket_name}/*"
      ]
    }
  ]
}
EOF

}
