#connect-AzAccount
#az login

az resource list --query "[?contains(type, 'Microsoft.SecurityCopilot/capacities')].{ResourceName:name, ResourceGroup:resourceGroup, ResourceProviderType:type}" -o table