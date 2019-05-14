[CmdletBinding()]
param(
    $domainName = "container.lab"
)

DISM /ONLINE /Add-Capability /CapabilityName:Rsat.ActiveDirectory.DS-LDS.Tools~~~~0.0.1.0
DISM /ONLINE /Add-Capability /CapabilityName:Rsat.DHCP.Tools~~~~0.0.1.0
DISM /ONLINE /Add-Capability /CapabilityName:Rsat.Dns.Tools~~~~0.0.1.0
DISM /ONLINE /Add-Capability /CapabilityName:Rsat.FileServices.Tools~~~~0.0.1.0
DISM /ONLINE /Add-Capability /CapabilityName:Rsat.GroupPolicy.Management.Tools~~~~0.0.1.0
DISM /ONLINE /Add-Capability /CapabilityName:Rsat.ServerManager.Tools~~~~0.0.1.0