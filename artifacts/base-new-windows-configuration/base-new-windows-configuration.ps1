[CmdletBinding()]
param(
    $domain = "container.lab"
)
Set-ExecutionPolicy  -ExecutionPolicy Unrestricted -Confirm:$false -Force
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False -Confirm:$false
Set-TimeZone -Id "Central Standard Time" -Confirm:$false
Enable-PSRemoting -Confirm:$false -Force
Install-PackageProvider -Name NuGet -Confirm:$false -Force

Restart-Computer
