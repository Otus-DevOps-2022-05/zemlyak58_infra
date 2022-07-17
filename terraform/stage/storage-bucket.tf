terraform {

    backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "tf-app-bucket"
    region     = "ru-central1"
    key        = "prod/terraform.tfstate"
    access_key = "0n8X6WY6S24N7OjXQ0YQ"
    secret_key = "JyTRFdqw8t1kh2-OJNz4JX5ZTz9Dj1rI9hxtzMP1"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
