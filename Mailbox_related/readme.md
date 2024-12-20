### Mailbox Rules Analysis plugin v7 (updaed 16-Dec-2024)

This KQL plugin queries user mailboxes for rules that may indiciate they've been compromised.

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [Mailbox_Rules-Analysis-plugin-v7.yaml](https://raw.githubusercontent.com/RickKotlarz/Copilot-for-Security-Plugins/refs/heads/main/Mailbox_related/Mailbox_Rules-Analysis-plugin-v7.yaml) from this directory.
2. Upload the custom plugin
3. Create a promptbook called "Analyze mailbox rule output" and paste in the prompt found within the [AskGPT-promptbook-v6.txt](https://raw.githubusercontent.com/RickKotlarz/Copilot-for-Security-Plugins/refs/heads/main/Mailbox_related/AskGPT-promptbook-v6.txt)
6. Add a second prompt to the promptbook that reads '/GetMailboxRulesForAllUsers' and save the promptbook. Alternatively you can simply leave the AskGPT prompt as is, and use it before calling either of the skills below.


#### Utlization of the plugin:

- **GetMailboxRulesForSingleUser** Gets mailbox rules for a single user

- **GetMailboxRulesForAllUsers** Gets mailbox rules for all users within the last 30 days

