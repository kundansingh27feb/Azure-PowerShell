. .\Connection.ps1
try {
    # Retrieving and display resource groups
    $resourceGroups = Get-AzResourceGroup
    if ($resourceGroups.Count -gt 0) {
        $resourceGroups | ForEach-Object {
           "Available Resource Group:" 
           $($_.ResourceGroupName)
        }
    } else {
        "No resource groups found in the current subscription."
    }
} catch {
    "Failed to retrieve resource groups. Error:"
    $_
}