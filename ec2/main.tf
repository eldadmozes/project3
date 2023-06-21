variable "ec2_instance" {
  type    = list(string)
  default = ["Prod1", "Slave", "Prod2"]
}


resource "aws_instance" "project3" {
  count         = length(var.ec2_instance)
  ami           = "ami-0261755bbcb8c4a84"
  instance_type = "t2.large"
  user_data     = <<-EOF
    #!/bin/bash
    apt-get update
  EOF
  tags = {
    Name = var.ec2_instance[count.index]
  }
}