#connect-AzAccount
#az login

# List all resources of type "Microsoft.SecurityCopilot/capacities" with their basic details
$resources = az resource list --query "[?contains(type, 'Microsoft.SecurityCopilot/capacities')].{ResourceId:id, ResourceName:name, ResourceGroup:resourceGroup, ResourceProviderType:type}" -o json

# Initialize an array to collect the results
$resourceDetailsList = @()

# Loop through each resource and fetch additional properties like numberOfUnits, crossGeoCompute, geo, and API version
foreach ($resource in $resources | ConvertFrom-Json) {
    # Retrieve the available API versions for the resource type (Microsoft.SecurityCopilot)
    $apiVersions = az provider show --namespace Microsoft.SecurityCopilot --query "resourceTypes[?resourceType=='capacities'].apiVersions" -o tsv

    # Get the first available API version (you can adjust this based on your requirements)
    $apiVersion = $apiVersions.Split()[0] # Picking the first API version from the list

    # Get resource details in JSON format with the API version dynamically retrieved
    $resourceDetails = az resource show --ids $resource.ResourceId --api-version $apiVersion --output json

    # Convert the JSON output to a PowerShell object
    $resourceJson = $resourceDetails | ConvertFrom-Json

    # Create a custom object to hold the resource details
    $resourceDetailsList += [PSCustomObject]@{
        ResourceName        = $resource.ResourceName
        ResourceGroup      = $resource.ResourceGroup
        ResourceProviderType = $resource.ResourceProviderType
        NumberOfUnits      = $resourceJson.properties.numberOfUnits
        CrossGeoCompute    = $resourceJson.properties.crossGeoCompute
        Geo                = $resourceJson.properties.geo
        ApiVersion         = $apiVersion
    }
}

# Display the results in a table format
$resourceDetailsList | Format-Table -Property ResourceGroup, ResourceName, ResourceProviderType, NumberOfUnits, CrossGeoCompute, Geo, ApiVersion
