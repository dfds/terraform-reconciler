data "aws_s3_bucket_object" "desired_state_source" {
  bucket = "dfds-ecr-desired-state"
  key    = var.bucket_key
}

locals {
  desired_state_json = jsondecode(data.aws_s3_bucket_object.desired_state_source.body)
}

