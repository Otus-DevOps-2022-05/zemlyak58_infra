terraform {

    backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tf-app-bucket"
    region     = "ru-central1"
    key        = "prod/terraform.tfstate"
    access_key = "ajeipls36ahvke8fuq3p"
    secret_key = "JyTRFdqw8t1kh2-OJNz4JX5ZTz9Dj1rI9hxtzMP1"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
