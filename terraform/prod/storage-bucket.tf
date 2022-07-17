terraform {

    backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tf-app-bucket"
    region     = "ru-central1"
    key        = "prod/terraform.tfstate"
    access_key = "YCAJEn8KfuarMkd2HewHw8CKe"
    secret_key = "YCPjRS5mc_0_KLfMD0LsfN1u93wQghBlOMI4ArDW"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
