terraform {
  backend "s3" {
    bucket = "terraform-arun"
    key    = "terraform/dev/terrraform-ebs"
    region = "us-east-1"
    shared_credentials_file = "/home/intelycorellc/.aws/credentials"
    profile = "arun"
  }
}
