$PSVersionTable.PSVersion
Get-Module -ListAvailable -Name Az

$ContextMsdn = Get-AzContext -ListAvailable | ? Name -Like "MSDN*"
Connect-AzAccount -ContextName $ContextMsdn.Name

$ContextName = "Azure Pass – Sponsorship (84b20f2e-263a-4c9e-b40d-35169bc3b920) - Paul@greta434web.onmicrosoft.com"
Connect-AzAccount -ContextName $ContextName

#--------------------
Get-AzContext | fl
#--------------------

Get-AzResourceGroup | Format-Table -Property ResourceGroupName,Location

# PIM module
# ----------

# Does not work on MacOS (both 6.2.3 and 7 RC1)
Find-Module -Name Microsoft.Azure.ActiveDirectory.PIM.PSModule | Install-Module -Force -Verbose