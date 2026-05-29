rgs = {
    rg101 = {
        name = "dev-raja"
        location = "Central India"
    }
}

stgs = {

  stg11 = {
    name                     = "devrajastg"
    resource_group_name      = "rg101"
    location                 = "Central India"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

container = {
    cntr = {
        name = "devrajacntr"
        storage_account_key = "stg11"
        container_access_type = "private"
    }
}

vnet97 = {
    vnet13 = {
        name = "devrajavnet"
        location = "Central India"
        resource_group_name = "rg101"
    }
}

subnet99 = {
    subnet13 ={
        name = "devrajasubnet"
        resource_group_name = "rg101"
        virtual_network_name = "vnet13" 
    }
}

vms98 = {
    vm11 = {
name = "rajabhaiya09"
resource_group_name = "rg101"
location = "Central India"
network_interface_name = "nic19"

    }
}

nic99 = {
    nic19 = {
        name = "devrajanic"
        location = "Central India"
    resource_group_name = "rg101"
        subnet_name = "subnet13"
    }
}