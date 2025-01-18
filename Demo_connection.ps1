# Defining sensitive variable values

$TenantID = "TenantID"
$AppID = "App_Registration_ID"
$AppSecret = "Secret_Value"

# Converting the secret to a secure string
$SecureSecret = $AppSecret | ConvertTo-SecureString -AsPlainText -Force

# Creating credential object
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $AppID, $SecureSecret

# Authenticating with Azure
try {
    Connect-AzAccount -ServicePrincipal -Credential $Credential -Tenant $TenantID -ErrorAction Stop | Out-Null
    Write-Host "Connected to Azure"

} catch {
    Write-Error "Failed to connect to Azure. Error: $_"
}