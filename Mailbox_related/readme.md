### Mailbox Rules Analysis plugin v7 (updaed 13-Dec-2024)

This KQL plugin queries user mailboxes for rules that may indiciate they've been compromised.

### Instructions
#### Upload the Custom Plugin

1. Obtain the file [Mailbox_Rules-Analysis-plugin-v7.yaml](https://raw.githubusercontent.com/RickKotlarz/Copilot-for-Security-Plugins/refs/heads/main/Mailbox_related/Mailbox_Rules-Analysis-plugin-v7.yaml) from this directory.
2. Upload the custom plugin
3. Create a prompt book called "Analyze mailbox rule output" and paste in the prompt found within the [AskGPT-promptbook-v5.txt](https://raw.githubusercontent.com/RickKotlarz/Copilot-for-Security-Plugins/refs/heads/main/Mailbox_related/AskGPT-promptbook-v5.txt)
4. Run one of the following Skills, follwed by running the promptbook you just created.


#### Utlization of the plugin:

- **GetMailboxRulesForSingleUser** Gets mailbox rules for a single user

- **GetMailboxRulesForAllUsers** Gets mailbox rules for all users within the last 30 days

