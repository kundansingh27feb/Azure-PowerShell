# Calling connection file that will create the connection with Azure Portal
..\..\Connection.ps1

#Defining variables
$RG_Name = "teir-3-D"
$location = "East US"

# Define tags as a hash table
$Tags = @{
    "Environment" = "Production"
    "Owner" = "Kundan"
}

#Here we are creating RG and assining the output value to ResourceGroupDetails Variable
$ResourceGroupDetails=New-AzResourceGroup -Name $RG_Name -Location $location -Tag $Tags

# Printing the value of ResourceGroupName Variable
$ResourceGroupDetails

# Now lets get the provisioning state of Resource Group that we have created from the ResourceGroupDetails Variable
'Provisioning State ' + $ResourceGroupDetails.ProvisioningState

#Now Lets work with existing resource group Named kundanSingh and get it's location And all the tags(Using foreach to get all the tags).
$PreRGName="kundanSingh"
$ResourceGroupExisting=Get-AzResourceGroup -Name $PreRGName
'Location of already created RG:' + $ResourceGroupExisting.Location
" "
'Applied tags in already created RG'
foreach ($tags in $ResourceGroupExisting)
{
    $tags.Tags
}

#Now Removing the above created resource group teir-3-D
Remove-AzResourceGroup $RG_Name -Force
'Removed Resources Group ' + $RG_Name

#To Remove all the Resource Group Available in Azure Portal use foreach loop

$AllRGGroup=Get-AzResourceGroup
foreach ($Group in $AllRGGroup)
{
    'Removing RG: ' + $Group.ResourceGroupName
    Remove-AzResourceGroup -Name $Group.ResourceGroupName -Force
}