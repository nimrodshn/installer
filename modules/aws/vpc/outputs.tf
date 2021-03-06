output "vpc_id" {
  value = "${data.aws_vpc.cluster_vpc.id}"
}

output "master_subnet_ids" {
  value = "${local.master_subnet_ids}"
}

output "worker_subnet_ids" {
  value = "${local.worker_subnet_ids}"
}

output "etcd_sg_id" {
  value = "${element(concat(aws_security_group.etcd.*.id, list("")), 0)}"
}

output "master_sg_id" {
  value = "${aws_security_group.master.id}"
}

output "worker_sg_id" {
  value = "${aws_security_group.worker.id}"
}

output "api_sg_id" {
  value = "${aws_security_group.api.id}"
}

output "console_sg_id" {
  value = "${aws_security_group.console.id}"
}

output "aws_elb_api_external_id" {
  value = "${aws_elb.api_external.0.id}"
}

output "aws_elb_api_internal_id" {
  value = "${aws_elb.api_internal.0.id}"
}

output "aws_elb_console_id" {
  value = "${aws_elb.console.id}"
}

output "aws_elb_tnc_id" {
  value = "${aws_elb.tnc.0.id}"
}

output "aws_lbs" {
  value = ["${compact(concat(aws_elb.api_internal.*.id, list(aws_elb.console.id), aws_elb.api_external.*.id, aws_elb.tnc.*.id))}"]
}

output "aws_api_external_dns_name" {
  value = "${element(concat(aws_elb.api_external.*.dns_name, list("")), 0)}"
}

output "aws_elb_api_external_zone_id" {
  value = "${element(concat(aws_elb.api_external.*.zone_id, list("")), 0)}"
}

output "aws_api_internal_dns_name" {
  value = "${element(concat(aws_elb.api_internal.*.dns_name, list("")), 0)}"
}

output "aws_elb_api_internal_zone_id" {
  value = "${element(concat(aws_elb.api_internal.*.zone_id, list("")), 0)}"
}

output "aws_console_dns_name" {
  value = "${aws_elb.console.dns_name}"
}

output "aws_elb_console_zone_id" {
  value = "${aws_elb.console.zone_id}"
}

output "aws_elb_tnc_dns_name" {
  value = "${element(concat(aws_elb.tnc.*.dns_name, list("")), 0)}"
}

output "aws_elb_tnc_zone_id" {
  value = "${element(concat(aws_elb.tnc.*.zone_id, list("")), 0)}"
}
