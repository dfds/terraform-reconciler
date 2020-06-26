data "aws_s3_bucket_object" "desired_state_source" {
  bucket = "dfds-ecr-desired-state"
  key    = "truck-configuration.json"
}

locals {
  program = jsondecode(data.aws_s3_bucket_object.desired_state_source.body)
}

