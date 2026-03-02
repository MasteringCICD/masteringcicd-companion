resource "local_file" "welcome" {
  # We inject our local and data values into the content to resolve TFLint warnings
  content  = "${var.welcome_message}\n\nManaged by: ${local.managed_by}\nOS Info: ${data.local_file.os_info.content}"
  filename = "${path.module}/welcome.txt"
}
