source "yandex" "ubuntu-nginx" {
  token               = "AQAAAAAE7JF2AATuwVA7tE-4b0wPr650_3Cy67U"
  folder_id           = "b1g7723tmgenredke25m"
  source_image_family = "ubuntu-2004-lts"
  ssh_username        = "ubuntu"
  use_ipv4_nat        = "true"
  image_description   = "my custom ubuntu with nginx"
  image_family        = "ubuntu-2004-lts"
  image_name          = "my-ubuntu-nginx"
  subnet_id           = "e9ba9mal1cb47ecnaimq"
  disk_type           = "network-ssd"
  zone                = "ru-central1-a"
}
 
build {
  sources = ["source.yandex.ubuntu-nginx"]
 
  provisioner "shell" {
    inline = ["sudo apt-get update -y",
              "sudo apt-get install -y nginx",
              "sudo systemctl enable nginx.service"]
  }
}
