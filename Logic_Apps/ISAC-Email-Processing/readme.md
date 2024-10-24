# ISAC Email Processing with Copilot for Security
Author: Chaitanya Belwal [https://github.com/cbelwal](https://github.com/cbelwal)

Information Sharing and Analysis Center (ISAC) is an organization that provides a central resource for gathering information on cyber and related threats to critical infrastructure and play a critical role in safeguarding industries from emerging threats. By bridging the gap between private and public sectors, ISACs provide timely and actionable intelligence on vulnerabilities that impact critical infrastructure. However, manually processing these threat bulletins can be overwhelming and slow, leaving security teams scrambling to respond in time. 

In this Logic App, ISAC emails containing CVEs are processed by analyzing the mailbox, extracting the CVEs and using Copilot for Security, the presense of those CVEs are analyzed in the environment. 

The information for CVEs detected in your environment is then enriched with data from MDTI and a consolidated HTML report is then emailed to one of more specified mailbox(es).

This way the generic ISAC email that contains a list of CVEs is converted to an actionable email containing only the CVEs that exist in your environment. The CVE information if further enriched with relevant information from Microsoft Defender Threat Intelligence.

## Deploying the Solution

### Step 1: Create an Integration Account

The JavaScript action requires an Integration Account to be assigned in the consumption based Logic Apps. If you do not have an integration account, please create one as shown in this <a href = "https://learn.microsoft.com/en-us/azure/logic-apps/enterprise-integration/create-integration-account?tabs=azure-portal%2Cconsumption">link</a>:

Please do not proceed further till the integration account is created, note down the name of the Integration account as it be needed in Step 2.

### Step 2: Deploy the Logic App

Click the button below to deploy the Logic App:


<a href="https://raw.githubusercontent.com/RickKotlarz/Copilot-for-Security-Plugins/refs/heads/main/Logic_Apps/ISAC-Email-Processing/azuredeploy.json" target="_blank">
<img src="https://aka.ms/deploytoazurebutton"/>
</a>

You can specify a different name for the Logic App, make sure there are no spaces in name. Specify the Integration Account that you want the logic app to use, the Integration should already exist else you will get an error.

### Step 3: Initialize O365 and Security Copilot API connections

Open the Logic App and click "API Connections" on the left navigation pane:

![alt text](LA-step-3.png)

Authorize both of the API connections  by clicking on 'Edit API Connection' under 'General' :

![alt text](LA-step-3_3.png)

![alt text](LA-step-3_5.png)


### Step 4: Enable the Logic App

Make sure the Logic App is enabled:

![alt text](LA-step-4.png)

### Step 5: Change Email addresses and conditions

Change the ISAC email receiver and report email addresses as per your environment in the Outlook trigger and output email . Also modify the conditions to detect ISAC emails as required in your environment. 

<br>
