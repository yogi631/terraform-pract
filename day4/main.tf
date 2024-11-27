module "yogi" {
  source        = "../day1"
  ami_id        = "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  keypair = "eswar"

}