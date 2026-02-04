resource "aws_instance" "k8s_dev" {
  ami                    = data.aws_ami.amazon_linux_2.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.ec2.id]

  root_block_device {
    volume_size = var.disk_size
    volume_type = "gp3"
  }

  tags = {
    Name        = "${var.project_name}-${var.environment}-k8s"
    Environment = var.environment
    ManagedBy   = "terraform"
  }
}
