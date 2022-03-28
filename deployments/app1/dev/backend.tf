terraform {
  backend "gcs" {
    bucket  = "terraform-leszek"
    prefix  = "tf-demo/state-dev/app1"
  }
}
