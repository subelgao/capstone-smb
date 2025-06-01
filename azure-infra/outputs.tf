output "app_server_public_ip" {
  description = "Public IP address of the DR app server"
  value       = azurerm_linux_virtual_machine.app.public_ip_address
}

output "resource_group_name" {
  description = "Name of the created resource group"
  value       = azurerm_resource_group.main.name
}
