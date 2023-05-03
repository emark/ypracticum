terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  token     = "AQAAAAAE7JF2AATuwVA7tE-4b0wPr650_3Cy67U"
  cloud_id  = "b1g140o6shjks32iajql"
  folder_id = "b1gpis4qrr9s1ttb31s4"
}

resource "yandex_storage_bucket" "bucket" {
  access_key = "YCAJEkqoqqKfDJd-ErR2KenGZ"
  secret_key = "YCPXsy3ym2LeLzaZuIz64tQHvE1u60Ipd4cO8L7w"
  bucket = "bucket-for-triggers"
}
