# Terraform
terraform {
    backend "s3" {
        bucket = "jamiejohnstone-com-infra"
        key = "tf-shared-domains"
        region = "eu-west-2"
    }
}

# Providers
provider "aws" {
    region = "eu-west-2"
}

# Define Zones
resource "aws_route53_zone" "shared-domains-zone" {
    provider = aws
    for_each = toset(var.domains)

    name = each.key
    comment = "shared-infra core domain"
}