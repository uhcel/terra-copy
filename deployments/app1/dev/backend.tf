terraform {
  backend "gcs" {
    bucket  = "terraform-leszek"
    prefix  = "tf-demo/sta-dev/app1"
  }
}
