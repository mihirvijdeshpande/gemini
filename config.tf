terraform{
 required_providers{
  aws = {
   source = "hashicorp/aws"
   }
 }
}

provider "aws" {
    region = "us-east-2"
    access_key = "<access-key>"
    secret_key = "<secret-key>"
}