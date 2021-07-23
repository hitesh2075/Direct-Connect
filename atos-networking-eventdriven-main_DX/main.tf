provider "aws" {
  region = "us-east-1"
}


module "DirectConnect" {
  source        = "./DirectConnect"
  direct_connect_id = var.direct_connect_id
  
}


