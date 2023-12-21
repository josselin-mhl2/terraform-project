
resource "aws_vpc" "pub-aws" {
  cidr_block = "172.16.0.0/21"

  tags = {
    Name = "josselin-vpc"
  }
}

resource "aws_subnet" "pub_a" {
  vpc_id = aws_vpc.mail.vpc_id
  cidr_block = "172.16.0.0/24"

  availability_zone = "us-east-1a"

  tags = {
    Name = "josselin-pub-a-sn"
  }
}
