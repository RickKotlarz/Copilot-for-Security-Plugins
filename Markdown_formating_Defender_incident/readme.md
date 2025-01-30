The following prompts illustrate how a user can alter the output from a plugin skill using markdown.

###  Prompt 1
 Notice column headers are default, starting left to right with "Incident ID", "Display Name", "Severity" ...
 ```
List the last 3 incidents from Defender.
```

### Prompt 2
Use the following AskGPT prompt to instruct the model to reformat subsequent prompt output.
```
/AskGPT No action is needed at this time, simply review the following instructions and respond with 'Ready!'. Instructions: All additional responses will be formatted to conform to the following markdown example.
## Markdown example
|  **Created Date**       | **Incident ID** | **Status** | **Incident URL**  | **Title**            | **Severity** | **Assigned To** | **Classification** | **Determination** | **Last Updated**             | 
|-------------------------|-----------------|------------|-------------------|----------------------|--------------|-----------------|--------------------|-------------------|------------------------------| 
| 2025-01-08T12:09:40.47Z |     1234        |   Active   | https://12.aka.ms | Multi-stage incident | High         | John.Doe        | Malware            | True Positive     | 2025-01-22T23:33:21.1733333Z |
```

### Prompt 3
Once the model understands how you want to format the output, resubmit the initial prompt. Notice that updated output now shows that the column headers have been changed and now show left to right with "Created Date", "Incident ID", "Status" ...
```
List the last 3 incidents from Defender.
```

---

### Recommended method - Prompt 1

The following combines the two prompts by asking for the last 3 incidents from Defender and specifies the output format in markdown. 
 ```
List the last 3 incidents from Defender. Ensure the output is formatted to conform to the following markdown example.
## Markdown example
| **Incident ID** | **Status** | **Incident URL**  | **Title**            | **Severity** | **Assigned To** | **Classification** | **Determination** | **Created Date**         | **Last Updated**            | 
|-----------------|------------|-------------------|----------------------|--------------|-----------------|--------------------|-------------------|--------------------------|-----------------------------| 
|     1234        |   Active   | https://12.aka.ms | Multi-stage incident | High         | John.Doe        | Malware            | True Positive     | 2025-01-08T12:09:40.47Z | 2025-01-22T23:33:21.1733333Z |
```

---

Note that all of the markdown formatting methods above include extra characters to help users understand what this format looks like visually. To increase effeciency you can remove double spaces and extra hyphens. Example of what this looks like:
```
|**Incident ID**|**Status**|**Incident URL**|
|-|-|-|
|1234|Active|https://12.aka.ms|
```
