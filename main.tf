terraform {
    required_providers {
      docker = {
        source = "kreuzwerker/docker"
      }
    }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:1.21"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name = "my-nginx"
  ports {
    internal = 80
    external = 8000
  }
}