terraform {
  backend "s3" {
    bucket = "tylrroche-remote-state-storage-s3"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt        = true
  }
}
