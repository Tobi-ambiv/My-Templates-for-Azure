resource "azurerm_resource_group" "first-rg" {
  name     = "myfirst-rg"
  location = "East US"
}

resource "azurerm_network_security_group" "first-sg" {
  name                = "acceptanceTestSecurityGroup1"
  location            = azurerm_resource_group.first-rg.location
  resource_group_name = azurerm_resource_group.first-rg.name

  security_rule {
    name                       = "first_security_rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"

   protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}