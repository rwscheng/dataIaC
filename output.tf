# Output the ip from the module of computation instance
output "ip" {
  value = module.gpc_compute_engine.instance_ip
}
