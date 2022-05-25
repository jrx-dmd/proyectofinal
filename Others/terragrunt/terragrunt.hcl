# /terragrunt.hcl
 
remote_state {
  backend = "s3"
 
  generate = {
    path = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
 
  config = {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    endpoint                    = "https://nyc3.digitaloceanspaces.com"
    region                      = "us-east-1"
    bucket                      = "testdavid1"
    key                         = "infrastructure/terraform.tfstate"
    access_key = "Q5S7TVJ4W37KE2CU2MWS"
    secret_key = "YjlHmrSORJ4S/Vera8/hORD/n3iYtKxhkPvHD8MeGco"
  }
}
 
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite"
  contents = <<EOF
provider "digitalocean" {
  token = "dop_v1_ea005dd80184142c7416cdab1e602c5f50f002d498556cee79e3c44f8da52d3a"
}
EOF
}






 

