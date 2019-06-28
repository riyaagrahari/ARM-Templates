Connect-AzAccount

$ResourceGroup="rnk"
$port=2800

$inboundRule="Primary Node"
$outboundRule="Secondary Node"

#name of NSG as per setup made by you
$NSGname="n3"

$r = Get-AzResource | Where {$_.ResourceGroupName -eq $ResourceGroup -and $_.ResourceType -eq "Microsoft.Network/networkSecurityGroups"}

$NSG = Get-AzNetworkSecurityGroup -Name $NSGname -ResourceGroupName $ResourceGroup

# inbound security rule.
$NSG | Add-AzNetworkSecurityRuleConfig -Name $inboundRule -Description "Allow Communication from Primary Database to Secondary Replica DB" -Access Allow `
    -Protocol * -Direction Inbound -Priority 3400 -SourceAddressPrefix "20.0.3.0/24" -SourcePortRange $port `
    -DestinationAddressPrefix "10.0.3.0/24" -DestinationPortRange $port


# outbound security rule.
$NSG | Add-AzNetworkSecurityRuleConfig -Name $outboundRule -Description "Allow Communication from Secondary Replica Database to Primary DB" -Access Allow `
    -Protocol * -Direction Outbound -Priority 3400 -SourceAddressPrefix "10.0.3.0/24" -SourcePortRange $port `
    -DestinationAddressPrefix "20.0.3.0/24" -DestinationPortRange $port

# Update Network security group rules
$NSG | Set-AzNetworkSecurityGroup