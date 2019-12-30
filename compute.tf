provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "bastion" {
    ami = "ami-02913db388613c3e1"
    instance_type = "t2.micro"
    availability_zone = "ap-south-1a"
    key_name = "december_key"
    associate_public_ip_address = true
    root_block_device {
        volume_type = "gp2"
        volume_size = "10"
        delete_on_termination = false
    }
    
    tags = {
        Name = "bastion"
    }

}

output "public_ip" {
value = aws_instance.bastion.public_ip
}