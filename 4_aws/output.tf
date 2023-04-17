output "lb_dns" {
  value = aws_elb.wordpress.dns_name
}

output "rdshost" {
  value = aws_db_instance.wpdb.address
}

output "efs-id" {
  value = aws_efs_file_system.wordpressfs.id
}