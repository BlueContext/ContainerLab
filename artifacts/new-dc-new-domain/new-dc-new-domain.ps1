[CmdletBinding()]
param(
    $databasePath = "C:\Windows\NTDS",
    $domainName = "container.lab",
    $domainNetbiosName = "CONTAINERLAB",
    $logPath = "C:\Windows\NTDS",
    $sysvolPath = "C:\Windows\SYSVOL",
    [Parameter(Mandatory=$true)]$password
)



Install-WindowsFeature AD-Domain-Services, RSAT, RSAT-Role-Tools, RSAT-AD-Tools, RSAT-AD-PowerShell, DNS, RSAT-DNS-Server, DHCP

Import-Module ADDSDeployment

$pwd = ConvertTo-SecureString $password -AsPlainText -Force

Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath $databasePath -DomainMode WinThreshold -DomainName $domainName -DomainNetbiosName $domainNetbiosName -ForestMode WinThreshold -InstallDns:$true -LogPath $logPath -NoRebootOnCompletion:$false -SysVolPath $sysvolPath -SafeModeAdministratorPassword $pwd -Force:$true


