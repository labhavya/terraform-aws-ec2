resource "aws_instance" "this" {
  ami                    = var.ami_id
  vpc_security_group_ids = [var.sg_id]
  instance_type          = var.instance_type
  subnet_id = var.subnet_id
  associate_public_ip_address =var.is_public
  tags = merge(

    var.common_tags,
    {
      Name="${var.project}-${var.environment}-${var.server-role}"
    }
  )
}