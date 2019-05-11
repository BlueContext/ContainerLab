[CmdletBinding()]
param(
    $domain = "container.lab",
    [Parameter(Mandatory=$true)]$username,
    [Parameter(Mandatory=$true)]$password
)

$credential = New-Object System.Management.Automation.PSCredential($username,$password)

Add-Computer -DomainName $domain -Credential $credential -Force

Start-Sleep -Seconds 15

Restart-Computer -Force
