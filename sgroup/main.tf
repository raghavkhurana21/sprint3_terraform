resource "aws_instance" "Ec2_Instance" {
    ami    = var.ami
    instance_type = var.ins_type
    tags = var.tags
    #Attach sg group with ec2 instance
    vpc_security_group_ids = [aws_security_group.raghav_sgroup.id]
   # security_groups = [aws_security_group.raghav_sgroup.name]
}

resource "aws_security_group" "raghav_sgroup" {
  name = var.sname
  vpc_id      = var.vpc
  description = var.sdescription
  dynamic "ingress" {
    for_each = [22, 80, 443]
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.prtcl
      cidr_blocks = ["0.0.0.0/0"]
    }

  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.cidr]
  }

  tags = var.tags


}
