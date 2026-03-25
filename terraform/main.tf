# Provedor AWS
provider "aws" {
  region = "us-east-1"
}

# Repositório ECR
resource "aws_ecr_repository" "app" {
  name                 = "api-hello-devops"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

# Output — mostra o endereço do repositório criado
output "ecr_repository_url" {
  value = aws_ecr_repository.app.repository_url
}