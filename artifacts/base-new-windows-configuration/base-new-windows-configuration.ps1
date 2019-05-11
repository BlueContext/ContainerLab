[CmdletBinding()]
param(
    $domain = "container.lab"
)

Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
Set-TimeZone -Id "Central Standard Time"
Enable-PSRemoting -Force
Install-PackageProvider -Name NuGet -Force

Restart-Computer
