 // retrieve subnet IDs by filtering them based on the VPC ID.
 data "aws_subnets" "subnet_ids" {

      filter {
        name   = "vpc-id"
        values = [aws_vpc.vpc.id]
      }

    }

//data "aws_availability_zones" "available" {}