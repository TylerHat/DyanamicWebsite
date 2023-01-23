#configures aws provider via vscode user
provider "aws" {
    region = "us-east-1"
    profile = "vscode"
}

#stores terraform state in file in s3 bucket
terraform {
  backend "s3" {
    bucket = "dynamicwebsite-tf-state-127408405916"
    key = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "vscode"
  }
}