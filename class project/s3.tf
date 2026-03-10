# To create an s3 bucket#
resource "aws_s3_bucket" "tf_s3_bucket_lab" {
  bucket = "nodejs-bkt0123-lab"

  tags = {
    Name        = "Nodejs terraform bucket_lab"
    Environment = "Dev"
  }
}

# To create an object into the S3 bucket#
resource "aws_s3_object" "tf_s3_object" {
  bucket = aws_s3_bucket.tf_s3_bucket_lab.bucket
  # It’s typically used to load multiple files for processing, "** will create loop and return all files in the path#
  for_each = fileset("C:/Users/ukeme.okon/Desktop/Images", "**")
  # Name of the object once it is in the bucket, "each.key" represent all the different file present in the file #
  key    = "Images/${each.key}"
  source = "C:/Users/ukeme.okon/Desktop/Images"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  # etag = filemd5("path/to/file")
}