provider "aws" {
    region = "us-east-1"
  
}

terraform {
  required_providers {
    jenkins = {
      source = "taiidani/jenkins"
      version = "0.10.1"
    }
  }
}

provider "jenkins" {
  server_url = "http://${var.env}-jenkins.${var.domain_name}" 
  username   = aws_ssm_parameter.user.value     
  password   = aws_ssm_parameter.pass.value

}
