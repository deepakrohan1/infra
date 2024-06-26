provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "example" {
    name        = "example-security-group"
    description = "Security group for example instances"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "example" {
    count         = 10
    ami           = "ami-0c94855ba95c71c99"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.example.id]
}