[CmdletBinding()]
param(
    $domain = "container.lab",
    [Parameter(Mandatory=$true)]$gmsaName,
    [Parameter(Mandatory=$true)]$authHostsGroupName,
    [Parameter(Mandatory=$true)]$appname,
    [Parameter(Mandatory=$true)]$spn1,
    [Parameter(Mandatory=$true)]$principalsAllowedToRetrieveManagedPassword,

)

#https://docs.microsoft.com/en-us/virtualization/windowscontainers/manage-containers/manage-serviceaccounts

Add-KdsRootKey -EffectiveTime (Get-Date).Add(-10)

New-AdGroup -Name $gmsaName
