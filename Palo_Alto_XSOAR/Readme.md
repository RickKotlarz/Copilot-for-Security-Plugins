### Palo Alto XSOAR v1 plugin (Updated Dec-27-2024)

Welcome to the Palo Alto XSOAR plugin. This plugin is an example of leveraging the Palo Alto XSOAR API but does require modification from the user to function correctly.

### Instructions
#### Upload the Custom Plugin

1. Download the plugin manifest and OAPI file from this directory.
2. Update the API endpoint within the OAPI file file (Palo_Alto_XSOAR_template_OAPI.yaml)
3. Update the URL reference to your OAPI file within the manifest file (Palo_Alto_XSOAR_manifest.yaml)
2. Install the plugin within Security Copilot

#### Utlization of the plugin:

- **X-GetAllDashboardDetails** Get all dashboards details
- **X-GetDashboardDetails** Get details for specefic dashboard
- **X-GetIncident** Get a specific incident
