terraform {
    backend "s3" {}
}

resource "terraform_data" "deploy" {
  triggers_replace = [timestamp()]

  provisioner "local-exec" {
    command     = "dream run -- npx -y prisma migrate deploy"
    interpreter = ["bash", "-c"]
    working_dir = var.dream_project_dir
  }
}
