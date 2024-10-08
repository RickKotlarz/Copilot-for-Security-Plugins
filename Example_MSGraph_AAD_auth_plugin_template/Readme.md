### Example Microsoft Graph using AADDelegated authentication v1 (Updated Sept-2024)

Welcome to the Example Microsoft Graph. As it states, the plugin leverages AADDelegated authentication, meaning their existing roles that have been authorized.

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [Example_API_key_auth_plugin_template_manifest.yaml](https://raw.githubusercontent.com/RickKotlarz/Copilot-for-Security-Plugins/main/Example_API_key_auth_plugin_template/Example_API_key_auth_plugin_template_manifest.yaml) from this directory.
2. Upload the custom plugin

#### Utlization of the plugin:

- **GetEntraProfile** Retrieves your Entra profile information from the MS Graph

- **GetAlertIdsFromIncidentId** GetAlertIdsFromIncidentId List all alert ID's based on a user provided Incident ID. Note that you'll need to include the entire filter string "incidentid eq 'ID'" and modify ID to denote the Incident ID you're looking up. (e.g. incidentid eq '16' )

- **GetEvidenceForSpecificAlert** Get all the evidence details of a specific alert id
