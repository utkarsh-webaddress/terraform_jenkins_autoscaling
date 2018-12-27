# Start a container
resource "docker_container" "jenkins" {
  name  = "jenkins"
  image = "jenkinsmaster2"
  count = "2"
  ports {
    internal = 8080
    external = 8080
  }
  volumes {
    container_path  = "/var/jenkins_home"
    host_path = "/Users/utkarsh/terraform/docker_volume_data/"
  }
}

# Find the latest Ubuntu precise image.
resource "docker_image" "jenkins" {
  name = "jenkins:latest"
}
