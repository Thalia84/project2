resource "aws_lightsail_instance" "custom" {
  name              = "myserver"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_3_0"
  user_data         = file("script2.sh")
  key_pair_name     = "leigh"
  tags = {
    team       = "devOps"
    env        = "dev"
    created_by = "terraform"
  }
}
resource "aws_iam_group" "cloudteam" {
    name = "cloudteam"
  
}
resource "aws_iam_user" "u5bt2024" {
    name = "u5bt2024"
  
}