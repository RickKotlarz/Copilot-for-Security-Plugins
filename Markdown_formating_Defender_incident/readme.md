The following example prompts illustrate how a user can alter the output from a plugin skill using markdown.

1. [Default output](#default-prompt)
2. [Formating with AskGPT](#formating-with-askgpt)
3. [Combining a request with markdown formatting instructions](#combined-instructions-and-markdown-formatting)
4. [Increase effeciency](#increase-effeciency)

###  Default prompt

> Running this prompt usually returns a table, though it may occasionally be a bulleted list. In either format, the first element is "Incident ID," followed by "Display Name," "Severity," and so forth.
```
List the last 3 incidents from Defender.
```

### Formating with AskGPT

> Large Language Models (LLMs) grasp context and follow instructions more effectively when delimiters and markdown are used in prompts. Although natural language works, it demands more explanation than most users prefer. We can minimize output variance by beginning with an /AskGPT prompt that tells the model "no actions are needed at this time" and to format subsequent output using markdown, including an example of the desired markdown format.
```
/AskGPT No action is needed at this time, simply review the following instructions and respond with 'Ready!'. Instructions: All additional responses will be formatted to conform to the following markdown example.
## Markdown example
|  **Created Date**       | **Incident ID** | **Status** | **Incident URL**  | **Title**            | **Severity** | **Assigned To** | **Classification** | **Determination** | **Last Updated**             | 
|-------------------------|-----------------|------------|-------------------|----------------------|--------------|-----------------|--------------------|-------------------|------------------------------| 
| 2025-01-08T12:09:40.47Z |     1234        |   Active   | https://12.aka.ms | Multi-stage incident | High         | John.Doe        | Malware            | True Positive     | 2025-01-22T23:33:21.1733333Z |
```
> After giving these instructions, rerunning the default prompt will show that the first element is now "Created Date," followed by "Incident ID," and then "Status," instead of "Incident ID," "Display Name," and "Severity." Note that these instructions **MUST** must occur before the subsequent prompts. You can store this prompt seperately in a promptbook for easier access and organization.
>
> Below is another example of formatting using bullets, indentations, and a horizontal bar after each incident. In this example, the "Assigned To," "Classification," and "Determination" fields have also been omitted from the formatted output.
```
/AskGPT No action is needed at this time, simply review the following instructions and respond with 'Ready!'. Instructions: All additional responses will be formatted to conform to the following markdown example.
- **Created Date**: `2025-01-08T12:09:40.47Z`
  - **Incident ID**: `1234`
  - **Status**: `Active`
  - **Title**: `Multi-stage incident`
        - **Severity**: `High`
  - **Last Updated**: `2025-01-22T23:33:21.1733333Z`
        - **Incident URL**: [Incident Details](https://12.aka.ms)
---
```

---


### Combining a request with markdown formatting instructions

> Instead of separating the request, you can include the formatting within the prompt itself. Combining both prompt and formatting instructions can be useful when used with Logic Apps and helps reduce SCU utilization.

 ```
List the last 3 incidents from Defender. Ensure the output is formatted to conform to the following markdown example.
## Markdown example
| **Incident ID** | **Status** | **Incident URL**  | **Title**            | **Severity** | **Assigned To** | **Classification** | **Determination** | **Created Date**         | **Last Updated**            | 
|-----------------|------------|-------------------|----------------------|--------------|-----------------|--------------------|-------------------|--------------------------|-----------------------------| 
|     1234        |   Active   | https://12.aka.ms | Multi-stage incident | High         | John.Doe        | Malware            | True Positive     | 2025-01-08T12:09:40.47Z | 2025-01-22T23:33:21.1733333Z |
```

---

### Increase-effeciency

> All the markdown formatting methods above include extra characters to help users visualize the format. To increase efficiency, you can remove double spaces and extra hyphens. Here's an example of what this looks like:

```
|**Incident ID**|**Status**|**Incident URL**|
|-|-|-|
|1234|Active|https://12.aka.ms|
```
