### HTTPbin.org v1 plugin (Updated Jan-03-2025)

Welcome to the HTTPbin Security Copilot plugin. This plugin provides a means to 


leveraging the Palo Alto XSOAR API but does require modification from the user to function correctly.

### Instructions
#### Upload the Custom Plugin

1. Download the plugin file (`HTTPbin.org_template_manifest`) from this directory.
2. Edit the `HTTPbin.org_template_OAPI` file to indiciate the default value to pass (line 31 and 37) to your endpoint.


#### Utlization of the plugin:

- **TestApiKeyAuth** Makes a call to HTTPbin.org with the API key and 'x-xdr-auth-id' value. Expand the view to see all data passed.