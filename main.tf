#Create ECR Repo
resource "aws_ecr_repository" "client" {
  name = "blockchain_client"
}
#TODO: Build docker images and push to ECR
resource "docker_image" "blockchain_client" {
  name = "${aws_ecr_repository.client.repository_url}:latest"

  build {
    context    = "application"
    dockerfile = "client.Dockerfile"
  }
}