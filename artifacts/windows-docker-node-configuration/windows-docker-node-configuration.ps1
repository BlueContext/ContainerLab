[CmdletBinding()]
param(
    $domainName = "container.lab"
)

Install-Module -Name DockerMsftProvider -Repository PSGallery -Force -Confirm:$false
Install-Package -Name docker -ProviderName DockerMsftProvider -Force -Confirm:$false
Restart-Computer