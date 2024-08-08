# Ref: https://learn.microsoft.com/en-us/azure/vpn-gateway/vpn-gateway-howto-point-to-site-rm-ps

$vnet = New-AzVirtualNetwork `
-ResourceGroupName "djoshi29-s43-RG" `
-Location "canadacentral" `
-Name "djoshi29-s43-vnet-gw" `
-AddressPrefix 172.16.111.0/26