$subscriptions = az account list --query "[].id" -o tsv
$results = @()

foreach ($subscription in $subscriptions) {
    $resources = az resource list --subscription $subscription --query "[?contains(type, 'Microsoft.SecurityCopilot/capacities')].{SubscriptionId:'$subscription', ResourceId:id, ResourceName:name, ResourceGroup:resourceGroup, ResourceProviderType:type}" -o json
    $results += $resources | ConvertFrom-Json
}

# Store each field in its respective variable
$SubscriptionId = $results | ForEach-Object { $_.SubscriptionId }
$ResourceId = $results | ForEach-Object { $_.ResourceId }
$ResourceName = $results | ForEach-Object { $_.ResourceName }
$ResourceGroup = $results | ForEach-Object { $_.ResourceGroup }
$ResourceProviderType = $results | ForEach-Object { $_.ResourceProviderType }

# Display the results in table format for reference
$results | Format-Table -Property SubscriptionId, ResourceName, ResourceGroup, ResourceProviderType

if ([string]::IsNullOrEmpty($ResourceId)) {
    Write-Output "No SCUs found within the tenant"
} else {
    az resource delete --ids $ResourceId
    Write-Output $resourceId
}