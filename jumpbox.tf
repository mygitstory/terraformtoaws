resource "aws_instance" "jumpbox" {
  ami = var.ami_id # pinning to a version prevents recreation when there's a new image available.
  instance_type = "m5.xlarge"
  associate_public_ip_address = true
  key_name = "iad-key"
  vpc_security_group_ids = [
    aws_security_group.allow_ssh.id
  ]
}
