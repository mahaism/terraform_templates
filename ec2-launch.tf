# This is to launch ec2 instance on aws cloud
provider "aws" {
	region = "ap-south-1"
}

resource "aws_instance" "webserver" {
	ami = "ami-02913db388613c3e1"
	instance_type = "t2.micro"
	key_name = "december_key"
	security_groups= ["project-sg"]
		tags = {
		   Name = "webserver"
	
	}


}
