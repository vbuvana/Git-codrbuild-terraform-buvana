provider "aws"{
    region = "eu-central-1"
    #profile = "buvana" if u set profile in credentials file
}

terraform {
    backend "s3" {
        bucket = "buvana-bucket"
        key    = "terraform.tfstate"
        region = "eu-central-1"
        #profile = "buvana"
    }         
}



module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.16.0"
  
  name = "Buvana-VPC"
  cidr = "10.0.0.0/16"

  azs             = ["eu-central-1a"]
  private_subnets = ["10.0.1.0/24"]
  public_subnets  = ["10.0.101.0/24"]

  public_subnet_tags = {
    Name = "Buvana-Public-Subnet"  
  } 
  private_subnet_tags = {
    Name = "Buvana-Private-Subnet"  
  } 
  tags = {
    Owner = "Buvana"
  }

}

