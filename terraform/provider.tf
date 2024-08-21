terraform {
required_providers {
aws = {
source = "hashicorp/aws"
version = ">= 5.62"
}
}
backend "s3" {
bucket = "tf-s3-guilherme-001"
key = "terraform.tfstate"
dynamodb_table = "tf-dynamo-guilherme-001"
region = "us-east-1"
}
}
provider "aws" {
region = "us-east-1"
}
