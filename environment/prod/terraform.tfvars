project_name = "vpc-eks"
region       = "us-east-1"

vpc_cidr = "10.0.0.0/16"
vpc_additional_cidrs = [
  "100.64.0.0/16"
]

public_subnets = [

  {
    name              = "vpc-public_subnets-1a"
    cidr              = "10.0.48.0/24"
    availability_zone = "us-east-1a"
  },
  {
    name              = "vpc-public_subnets-1b"
    cidr              = "10.0.49.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "vpc-public_subnets-1c"
    cidr              = "10.0.50.0/24"
    availability_zone = "us-east-1c"
  }
]


private_subnets = [

  {
    name              = "vpc-private_subnets-1a"
    cidr              = "10.0.0.0/20"
    availability_zone = "us-east-1a"
  },
  {
    name              = "vpc-private_subnets-1b"
    cidr              = "10.0.16.0/20"
    availability_zone = "us-east-1b"
  },
  {
    name              = "vpc-private_subnets-1c"
    cidr              = "10.0.32.0/20"
    availability_zone = "us-east-1c"
  },
  // pods 
  // pods (CGNAT range - VPC CNI custom networking)
  {
    name              = "vpc-private_pods-1a"
    cidr              = "100.64.0.0/18"
    availability_zone = "us-east-1a"
  },
  {
    name              = "vpc-private_pods-1b"
    cidr              = "100.64.64.0/18"
    availability_zone = "us-east-1b"
  },
  {
    name              = "vpc-private_pods-1c"
    cidr              = "100.64.128.0/18"
    availability_zone = "us-east-1c"


  }
]

database_subnets = [

  {
    name              = "vpc-database_subnets-1a"
    cidr              = "10.0.51.0/24"
    availability_zone = "us-east-1a"
  },
  {
    name              = "vpc-database_subnets-1b"
    cidr              = "10.0.52.0/24"
    availability_zone = "us-east-1b"
  },
  {
    name              = "vpc-database_subnets-1c"
    cidr              = "10.0.53.0/24"
    availability_zone = "us-east-1c"
  }
]