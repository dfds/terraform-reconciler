terraform {
  backend "s3" {
    bucket = "dfds-actual-state"
    key = "actual-state"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}

# data "external" "body" {
#   body = ["echo", "${data.aws_s3_bucket_object.desired_state_source.body}"]
# }

resource "aws_ecr_repository" "repo" {
  # name = var.repo_name
  name = local.program.repo_name

  image_scanning_configuration {
    scan_on_push = false
  }
}

resource "aws_ecr_repository_policy" "policy" {
  repository = aws_ecr_repository.repo.name

  policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "Allow pull from oxygen account",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::738063116313:root"
      },
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchGetImage",
        "ecr:GetDownloadUrlForLayer"
      ]
    }
  ]
}
EOF

depends_on = [aws_ecr_repository.repo]

}