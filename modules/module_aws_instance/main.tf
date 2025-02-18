resource "aws_instance" "instance" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.public_subnet_id
    tags = {
        Name = var.name
    }
    user_data=file("${path.module}/user_data.sh")
    security_groups = [ aws_security_group.ins-sg.id ]
    key_name = aws_key_pair.key_value.key_name
}



  



 
