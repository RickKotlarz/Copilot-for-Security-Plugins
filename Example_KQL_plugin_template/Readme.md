### Example KQL plugin v1 (Updated Sept-2024)

Welcome to the Copilot for Security Example KQL plugin. This plugin illustrates the use of KQL to query information from Sentinel or Defender

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [Example_KQL_plugin](https://raw.githubusercontent.com/RickKotlarz/CopilotForSecurity/main/Plugins/..../Example_KQL_plugin.yaml) from this directory.
2. Upload the custom plugin
3. When prompted, enter in Sentinel configuration data requested
4. If you would like to hard code the Sentinel confugration data within the plugin you may as illustarted in **ShowUserIPinfo**

#### Utlization of the plugin:

- **GetSigninDataForLast7Days** Searches Defender for all High and Critical alerts over the past 7 days

- **GetSigninData** Searches Entra for sign-in data over the last n days

- **ShowUserIPinfo** Searches Sentinel for all IP addresses which a given user has every used to authenticate. Then counts the frequency that each IP was used, shows only the unique results and associated count, as well as the last time that IP was used.
        