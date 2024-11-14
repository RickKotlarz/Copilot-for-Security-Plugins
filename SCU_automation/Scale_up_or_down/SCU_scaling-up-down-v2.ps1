$subscription = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
$resourceGroup = "copilot-for-security-demo"
$resourceName = "cop-prod-useast"
$resourceType = "microsoft.securitycopilot/capacities"

Connect-AzAccount -Identity
Set-AzContext -Subscription $subscription
$Resource = Get-AzResource -ResourceGroupName $resourceGroup -ResourceName $resourceName -ResourceType $resourceType
$Resource.Properties.numberOfUnits = 1
$Resource | Set-AzResource -Force
