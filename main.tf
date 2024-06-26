terraform {
}
provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

//--------------------------------------------------------------------
// Modules
module "devinstance" {
  source  = "app.terraform.io/syohei-a/devinstance/aws"
  version = "0.0.2"

  hello_tf_instance_type = "t2.large"
  prefix                 = "syohei-a"
}