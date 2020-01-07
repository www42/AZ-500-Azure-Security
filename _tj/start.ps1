$PSVersionTable.PSVersion
Get-Module -ListAvailable -Name Az*

# MSDN Context
#$ContextMsdn = Get-AzContext -ListAvailable | ? Name -Like "MSDN*"
#Connect-AzAccount -ContextName $ContextMsdn.Name

# AzurePass Context
$ContextName = "Azure Pass – Sponsorship (84b20f2e-263a-4c9e-b40d-35169bc3b920) - Paul@greta434web.onmicrosoft.com"
Connect-AzAccount -ContextName $ContextName

#--------------------
Get-AzContext | fl
#--------------------

Get-AzResourceGroup | Format-Table -Property ResourceGroupName,Location

# PIM module
# ----------

# Find Module on PowerShell Gallary 
# old version (oct 2018), only for *Windows* PowerShell (Desk)
Find-Module -Name Microsoft.Azure.ActiveDirectory.PIM.PSModule | Format-List Name, Version, PublishedDate
Find-Module -Name Microsoft.Azure.ActiveDirectory.PIM.PSModule | Install-Module -Force -AllowClobber -Verbose
Get-Command -Module Microsoft.Azure.ActiveDirectory.PIM.PSModule

# Authenticate to PIM as Beate
Connect-PimService -Username 'Beate@greta434web.onmicrosoft.com'

# Beate is eligible for "Global Administrator" role (Azure AD roles are shown only. No Azure RBAC roles.)
Get-PrivilegedRoleAssignment

# Activate role
$params = @{
    'RoleId' = '62e90394-69f5-4237-9190-012177145e10';
    'Reason' = 'Testing PowerShell';
    'Duration' = '0.5'
}

Enable-PrivilegedRoleAssignment @params