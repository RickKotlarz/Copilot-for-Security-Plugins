$subscription = "ea2133ed-40f7-465c-ba33-07882efc8bd0"
$resourceGroup = "copilot-for-security-demo"
$resourceName = "cop-prod-useast"
$resourceType = "microsoft.securitycopilot/capacities"

Connect-AzAccount -Identity
Set-AzContext -Subscription $subscription
$Resource = Get-AzResource -ResourceGroupName $resourceGroup -ResourceName $resourceName -ResourceType $resourceType
$Resource.Properties.numberOfUnits = 1
$Resource | Set-AzResource -Force
