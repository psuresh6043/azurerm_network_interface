resource "azurerm_network_interface" "network_interface" {



  location                      = var.location                      #(Required) The location where the Network Interface should exist. Changing this forces a new resource to be created.
  name                          = var.name                          #(Required) The name of the Network Interface. Changing this forces a new resource to be created.
  resource_group_name           = var.resource_group_name           #(Required) The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created.
  dns_servers                   = var.dns_servers                   #(Optional) A list of IP Addresses defining the DNS Servers which should be used for this Network Interface.
  edge_zone                     = var.edge_zone                     #(Optional) Specifies the Edge Zone within the Azure Region where this Network Interface should exist. Changing this forces a new Network Interface to be created.
  enable_ip_forwarding          = var.enable_ip_forwarding          #(Optional) Should IP Forwarding be enabled? Defaults to false.
  enable_accelerated_networking = var.enable_accelerated_networking #(Optional) Should Accelerated Networking be enabled? Defaults to false.
  internal_dns_name_label       = var.internal_dns_name_label       #(Optional) The (relative) DNS Name used for internal communications between Virtual Machines in the same Virtual Network.
  tags                          = var.tags                          #(Optional) A mapping of tags to assign to the resource.




  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.private_ip_address_allocation
    public_ip_address_id          = var.public_ip_address_id
    private_ip_address            = var.private_ip_address
    # private_ip_address = var.private_ip_address_allocation == "Static" ? var.private_ip_address : null
  }
}
