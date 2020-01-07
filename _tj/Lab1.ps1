# Lab 1 - Azure AD Privileged Identity Management
# ===============================================

# Exercise 1 - Discover and Manage Azure Resources
# Exercise 2 - Assign Directory Roles
# Exercise 3 - Activate and Deactivate PIM Roles
# Exercise 4 - Directory Roles (General)
# Exercise 5 - PIM Resource Workflows
# Exercise 6 - View audit history for Azure AD roles in PIM


# ------------ Exercise 1 --------------------------------------------------------

# Task 1: Lab setup
# ------
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Pa55w.rd"
$domainObj = get-azureaddomain
$domain = $domainObj[0].name

New-AzureADUser -DisplayName "Isabella Simonsen" `
                -PasswordProfile $PasswordProfile `
                -UserPrincipalName "Isabella@$domain" `
                -AccountEnabled $true `
                -MailNickName "Isabella" `
                -UsageLocation "US"

# Task 2: Enable Azure AD Premium P2 trial and create a test user
# ------
# Portal
#   Anmerkung: Es wirk *kein* Test User angelegt.

# Task 3: Discover resources
# ------
# Portal
#   Consent to PIM
#   MFA -> phone number
#   Sowohl Azure AD Tenant als auch Azure Subscription werden für PIM aktiviert



# ------------ Exercise 2 --------------------------------------------------------

# Task 1: Make a user eligible for a role
# ------
# Portal
#   Azure AD Role "Billing Administrator" --> Isabella

# Task 2: Make a role permanent
# ------
# Portal
#   "Billing Administrator" -- Isabella make permanent

# Task 3: Remove a user from a role
# ------
# Portal
#   "Billing Administrator" -- Isabella remove



# ------------ Exercise 3 --------------------------------------------------------

# Task 1: Activate a role
# ------
# Portal
#   Azure AD Role "Billing Administrator" --> Isabella (wie Exercise 2 Task 1)
#   als Isabella anmelden, eigene Rolle aktivieren, sofort, Begründung: "I need to look at some invoices"
#   mit MFA challenge

# Task 2: Use a role immediately after activation
# ------
# Portal
#   Sign out (als Isabella). Isabella hatte in Task 1 ihre Rolle aktiviert. Sie benötigt ein neues Token.
#   Sign in (als Isabella)

# Task 3: View the status of your requests
# ------
#   My Requests anschauen. Fertig.

# Task 4: Deactivate a role
# ------
# Portal
#   Isabella deaktiviert ihre Rolle selber

# Task 5: Cancel a pending request
# ----
# Portal
#   Isabella cancelt ihre Anforderung. Das geht natürlich nicht, da ihr Request bereits approved ist. Aber so würde es gehen...



# ------------ Exercise 4 --------------------------------------------------------

# Task 1: Start an access review for Azure AD directory roles in PIM
# ------
# Portal
#   Anmerkung: Ergebnisse (outcome) weitgehend unverständlich ("not reviewed"?)

# Task 2: Approve or deny access
# ------
# Portal
#   Achtung! Click "Review access", not "Access reviews".

# Task 3: Complete an access review for Azure AD directory roles in PIM
# ------
# Portal

# Task 4: Configure security alerts for Azure AD directory roles in PIM
# ------
# Portal
#   Azure AD roles | Settings | Alerts (so steht es auch im Lab)




# ------------ Exercise 5 --------------------------------------------------------

# Task 1: Configure the Global Administrator role to require approval
# ------
# Portal
#   Anmerkung: Es wird kein Approver angegeben. Dann sind "Priviledged Role Administrators" die Approver.

# Task 2: Enable Isabella for Global Administrator privileges
# ------
# Portal
#   Isabella --> Global Administrator
#   Sign in als Isabella, activate role




# ------------ Exercise 6 --------------------------------------------------------

# Task 1: View audit history
# ------
# Portal

# Task 2: Filter audit history
# ------
# Portal
