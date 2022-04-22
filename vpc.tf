/*#Create VPC
resource "aws_vpc" "vpc" {
    cidr_block = "${var.vpc_cidr}"
    instance_tenancy = "default"
    enable_dns_hostnames = true
  
  tags = {
    "name" = "Test_VPC"
  }
}

#Create Internet Gateway and Attach it to VPC
resource "aws_internet_gateway" "internet-gateway" {
    vpc_id = aws_vpc.vpc.id

    tags = {
      "name" = "Test_IGW"
    }
 }

 #Create Pubilc Subnet-1
 resource "aws_subnet" "public-subnet-1" {
     vpc_id = aws_vpc.vpc.id
     cidr_block = "${var.public_subnet_1_cidr}"
     availability_zone = "us-east-1a"
     map_public_ip_on_launch = true
   
   tags = {
     "name" = "Public_Subnet_1"
   }
 }

 #Create Public Subnet-2
 resource "aws_subnet" "public-subnet-2" {
     vpc_id = aws_vpc.vpc.id
     cidr_block = "${var.public_subnet_2_cidr}"
     map_public_ip_on_launch = true
     availability_zone = "us-east-1b"


     tags = {
       "name" = "Public_subnet_2"
     }
 }

 #Create Route table and add public route
 resource "aws_route_table" "public-route-table" {
     vpc_id = aws_vpc.vpc.id

    route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.internet-gateway.id
    } 

   tags = {
     "name" = "Public_Route_Table"
   }
 }

 #Associate public subnet to public route table
resource "aws_route_table_association" "public-subnet-1-route-table-association" {
    subnet_id = aws_subnet.public-subnet-1.id
    route_table_id = aws_route_table.public-route-table.id
  }

resource "aws_route_table_association" "public-subnet-2-route-table-association" {
    subnet_id = aws_subnet.public-subnet-2.id
    route_table_id = aws_route_table.public-route-table.id
  }


#Create Private subnet 1 
resource "aws_subnet" "private-subnet-1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "${var.private_subnet_1_cidr}"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = false

    tags = {
      "name" = "Private subnet 1 | APP Tier"
   }
}

#Create Private subnet 2
resource "aws_subnet" "private-subnet-2" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "${var.private_subnet_2_cidr}"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = false

    tags = {
      "name" = "Private subnet 2 | APP Tier"
   }
}

#Create Private subnet 3
resource "aws_subnet" "private-subnet-3" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "${var.private_subnet_3_cidr}"
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = false

    tags = {
      "name" = "Private subnet 3 | Database Tire"
   }
}

#Create Private subnet 4
resource "aws_subnet" "private-subnet-4" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "${var.private_subnet_4_cidr}"
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = false

    tags = {
      "name" = "Private subnet 4 | Database Tire"
   }
}*/