resource "aws_instance" "terraform" {
    ami = data.aws_ami.ami_info.id
    instance_type = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro"
    count = lengh(var.instance_names)
    aws_security_group_id = 

    tags = { 
        Name = var.instance_names[count.index]
    }
}


resource "aws_security_group" "allow_ssh_terraform" {
    name        = "allow_sshh" #allow_ssh is already there in my account
    description = "Allow port number 22 for SSH access"

    # usually we allow everything in egress
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
        ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "allow_sshh"
    }
}