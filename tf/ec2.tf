resource "aws_instance" "main" {
  ami           = "ami-06d94a781b544c133"
  instance_type = "t2.micro"
  count         = 1
  
  tags = {
    Name = "IaC-Test"
    Env = "dev"
	owner = "rvidal@itsgroup.com"
	ephemere = "oui"
	entity = "unimate"
  }
  volume_tags = {
	owner = "rvidal@itsgroup.com"
	ephemere = "oui"
	entity = "unimate"
  }    
}