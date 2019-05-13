[CmdletBinding()]
param(
    $domain = "container.lab",
    [Parameter(Mandatory=$true)]$username,
    [Parameter(Mandatory=$true)]$password
)

$pwd = ConvertTo-SecureString $password -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential($username,$pwd)

Add-Computer -DomainName $domain -Credential $credential -Force

Start-Sleep -Seconds 15

Restart-Computer -Force
