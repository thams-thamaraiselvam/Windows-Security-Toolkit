If (!(Get-Module -ListAvailable -Name ActiveDirectory))
{
Write-Host "Active Directory module not installed."
Exit
}

Import-Module ActiveDirectory

netdom query fsmo

Search-ADAccount -LockedOut

Get-ADDomainController -Filter *
