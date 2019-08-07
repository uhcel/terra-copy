  data "terraform_remote_state" "networking-dev" {
  backend = "gcs"
  bucket  = "cf-tf-seed-bucket"
  prefix  = "tf-demo/state/networking"
}
