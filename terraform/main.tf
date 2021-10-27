#----------------
# Creating EC2 Resources
#----------------

resource "aws_instance" "andy-ec2" {
    ami                         = "ami-074cce78125f09d61"
    instance_type               = "t2.micro"
    subnet_id                   = "subnet-06b7c6dc76f863c64"
    key_name                    = "andyaws-connect"
    associate_public_ip_address = "true"
    vpc_security_group_ids      = ["sg-01012638120df19a5"]

    tags = {
        Name        = "andy-ec2"
    }
}