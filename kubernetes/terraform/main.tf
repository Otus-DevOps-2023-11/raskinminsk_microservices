terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
    ansible = {
      source = "ansible/ansible"
      version = "~>1.2.0"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_compute_instance" "node" {
  for_each            = toset(["control-1", "worker-1"])
  name = each.key
#  labels = {
#    tags                      = "kubernetes"
#    allow_stopping_for_update = true
#  }

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }

  network_interface {
    # id подсети default-ru-central1-a
    subnet_id = var.subnet_id
    nat       = true
  }

  metadata = {
    ssh-keys = "raskin:${file(var.public_key_path)}"
  }

  connection {
    type  = "ssh"
    host  = self.network_interface[0].nat_ip_address
    user  = "raskin"
    agent = true
    # приватный ключ не используется, подключение через ssh-agent)
    # private_key = var.private_key
  }

}

