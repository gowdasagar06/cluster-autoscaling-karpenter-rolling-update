terraform {
  backend "s3" {
    bucket         = "testsagar-123"  
    key            = "clusterautoscaler/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
  }
}
