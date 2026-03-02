# We use this to read an external configuration or system file
# In a real-world scenario, this might be a VPC ID or an AWS AMI.
data "local_file" "os_info" {
  # Note: This is a Linux system path. This is why we mandated WSL2 for Windows users!
  filename = "/etc/os-release"
}
