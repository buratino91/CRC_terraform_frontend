resource aws_route53_zone "crc_zone" {
    name = "my-b4d3-resume.com"
    force_destroy = null
    comment = "HostedZone created by Route53 Registrar"
    tags = {}
}