# Create SCUs via NewAzResource cmdlet

$resourceName = "SecurityCopilotSCU"
$resourceGroupName = "SecurityCopilot"
$numberOfSCUs = 1
$geoLocation = "westeurope"
$geo = "EU"
$crossGeo = "NotAllowed"
$apiVersion = "2023-12-01-preview"

New-AzResource -ResourceName $resourceName -ResourceType "Microsoft.SecurityCopilot/capacities" -ResourceGroupName $resourceGroupName -Location $geoLocation -ApiVersion "2023-12-01-preview" -Properties @{numberOfUnits=$numberOfSCUs; crossGeoCompute=$crossGeo; geo=$geo}

