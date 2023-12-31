# VPC Variables
vpc_name = "dev-vpc"
vpc_cidr_block = "10.0.0.0/16"
#vpc_availability_zones = ["eu-west-1a", "eu-west-1b"]
vpc_public_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
vpc_database_subnets= ["10.0.51.0/24", "10.0.52.0/24"]
vpc_create_database_subnet_group = true 
vpc_create_database_subnet_route_table = true   
vpc_enable_nat_gateway = true  
vpc_single_nat_gateway = true