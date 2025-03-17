## The following commands allow you to identify where an SCU has been created within a tenant. For easy of use, simply log into the Azure Portal and launch the Azure Shell.

```
#connect-AzAccount
#az login

az resource list --query "[?contains(type, 'Microsoft.SecurityCopilot/capacities')].{ResourceName:name, ResourceGroup:resourceGroup, ResourceProviderType:type}" -o table
```
Output should appear as...
![Azure Portal Showing SCU location](https://github.com/RickKotlarz/Copilot-for-Security-Plugins/blob/main/SCU_automation/Find_SCUs_simple/Find-SCU-simple-results.png)

