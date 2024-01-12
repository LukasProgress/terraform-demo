resource "aws_key_pair" "terraform_keys" {
  key_name = var.key_name
  public_key = file("~/.ssh/${var.key_name}.pub")
}