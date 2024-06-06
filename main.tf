terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }

  required_version = ">= 0.13"
}


resource "docker_image" "nginx" {
    name         = "nginx:latest"
}

resource "docker_container" "nginx" {
    image = docker_image.nginx.latest
    name  = "nginx"
    ports {
        internal = 80
        external = var.external_port
        protocol = "tcp"
    }
}