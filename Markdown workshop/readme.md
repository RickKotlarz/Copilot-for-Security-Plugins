# Welcome to Microsoft Copilot for Security Labs!

![Security CoPilot Logo](https://github.com/Azure/Copilot-For-Security/blob/main/Images/ic_fluent_copilot_64_64%402x.png)

## Introduction

This workshop is designed to help you get up to speed with Microsoft Security Copilot. It offers hands-on experience in using Markdown, which can significantly enhance how our Large Language Models (LLMs) reason through data and format the results you receive.

## Reccomendations

It's highly reccomended that you review the following two pages prior to starting these modules.
 - [Prompting in Microsoft Security Copilot](https://learn.microsoft.com/en-us/copilot/security/prompting-security-copilot)
 - [Create effective prompts](https://learn.microsoft.com/en-us/copilot/security/prompting-tips)

## What is markdown

Markdown is a lightweight markup language used to format plain text. It allows you to easily add formatting elements such as headers, lists, links, images, bold or italic text, and more, using simple symbols or characters. The goal of Markdown is to make writing content more efficient, while keeping the text readable in its raw form.

## Why use markdown?
Using delimiters within Markdown can significantly help Large Language Models (LLMs) better understand a user's intent and the desired output by providing structure and clarity in the text.

1. Clear Separation of Content
Delimiters in Markdown—such as headers, bullet points, and code blocks—help structure information. By marking certain sections of text with specific syntax (like # for headers or - for bullet points), you give LLMs a better understanding of the importance or relationship between different pieces of information.
Example: If you use a header to mark a section as a summary or conclusion (# Summary), LLMs can recognize that this is a critical point, allowing them to prioritize processing that section differently from a longer body of content.
2. Enhancing Context Recognition
Markdown allows you to highlight key sections, like lists or code, making it easier for LLMs to identify what the user values most. When the text is organized this way, LLMs can better parse and prioritize responses based on the structure provided by the user.
Example: If you create an ordered list for steps in a process (1. Step 1), the LLM understands the sequence of actions and the desired output should reflect that order, helping to improve response clarity and coherence.
3. Distinguishing Between Input and Output
Using specific delimiters like code blocks (triple backticks) helps the LLM distinguish between normal text and specialized content (like code). This allows the model to focus on analyzing the code or commands inside the block, rather than treating it like regular content.
Example: If a user asks the model to evaluate some Python code, wrapping that code in Markdown code blocks (```python code_here ```) helps the LLM understand that it needs to treat the text differently, focusing on syntax and logic rather than general interpretation.
4. Highlighting Intent with Emphasis
Markdown allows you to emphasize important words or phrases through bold or italic formatting. This can help guide LLMs in understanding which parts of the input are especially important, thereby influencing the generated output to prioritize certain aspects over others.
Example: If a user writes **Important**, the LLM can infer that the word "Important" is a critical concept that should be emphasized in the response.
5. Prompting LLMs with Specific Formatting
Markdown formatting provides a direct way to prompt LLMs by making certain content stand out, allowing for more effective reasoning. For instance, a table (| Header | Value |) can signal the model to analyze data in a tabular form and generate responses that treat the content as structured data.
Example: If a user asks for a breakdown of a report in a table format and marks it with Markdown, the LLM can extract and interpret the rows and columns as distinct units for output, improving the organization and clarity of the response.
6. Facilitating Conditional Output
By using delimiters, users can conditionally format their requests for more customized outputs. For instance, Markdown's use of lists or code sections can tell LLMs to treat each element as a separate item or task, leading to more focused and structured outputs.
Example: If a user requests multiple tasks in a list (- Task 1, - Task 2), the LLM understands that each task should be handled independently, resulting in a more organized and segmented response.


Microsoft Copilot for Security custom plugins enable developers\power users to seamlessly integrate the power of the GPT models into third-party platforms, enhancing functionality and user experience. These plugins act as a bridge between the raw capabilities of the model and specific applications, allowing for tailored outputs in diverse use-cases. By utilizing custom plugins, users can harness the expansive knowledge of Microsoft Copilot for Security models in a contextually relevant and user-friendly manner.

Documentation: [https://learn.microsoft.com/en-us/security-copilot/plugin_overview](https://learn.microsoft.com/en-us/security-copilot/plugin_overview)

## Workshop Modules

- [**Module 1 – Using Markdown for formatting**](https://github.com/Azure/Copilot-For-Security/tree/main/Technical%20Workshops/Leveraging%20Markdown/Module_1)
- [**Module 2 - Improving reasoning with markdown**](https://github.com/Azure/Copilot-For-Security/tree/main/Technical%20Workshops/Leveraging%20Markdown/Module_1)
