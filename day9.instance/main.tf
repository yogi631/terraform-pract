resource "aws_instance" "name" {
    ami = "ami-0453ec754f44f9a4a"
    instance_type = "t2.micro"
    key_name = "eswar"
     tags = {
       Name = "shannu"
     }
  
}
 
resource "aws_instance" "test" {
    ami = "ami-0c80e2b6ccb9ad6d1"
    instance_type = "t2.micro"
    key_name = "parameswar"
    tags = {
      Name = "yogi"
    }
    provider = aws.jjjdhhj
  
}