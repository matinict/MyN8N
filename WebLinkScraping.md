# WebLinkScraping
## 🕸️ WebLinkScraping – Structured Website Data Extractor

[![Built with n8n](https://img.shields.io/badge/Built%20with-n8n-208ec6?logo=n8n&logoColor=white)](https://n8n.io)  
[![OpenAI](https://img.shields.io/badge/AI‑Model-OpenAI%20GPT‑4o‑Mini-lightgrey?logo=openai)](https://platform.openai.com)  
[![No-Code](https://img.shields.io/badge/No‑Code‑Automation-green)](#)

Automatically fetches a website’s HTML, converts it to Markdown, extracts all outbound links, summarizes content, and outputs structured JSON using GPT-4o-Mini.

---

## 🚀 Workflow Overview

1. **Manual Trigger** – Start by clicking “Execute workflow”.
2. **HTTP Request** – Fetches target website HTML (`https://tempurmattress-exdisplay.co.uk`).
3. **Markdown Converter** – Converts the raw HTML to Markdown format.
4. **OpenAI (Message a model)** – Feeds the Markdown to GPT-4o-Mini to:
   - Extract all absolute URLs in an array
   - Return the site's plaintext copy
   - Provide a one-line summary

---

## 🧩 Structured Output Format

The AI Message a model JSON like:

```json
{
  "Links": ["https://example.com/page1", "..."],
  "plainTextWebsiteCopy": "Full plaintext copy without HTML or MD syntax...",
  "oneLineSummary": "Brief summary of the site"
}

example: 
Your task is to take the raw Markdown of a website, and convert it into structured data. Use the following format:
{
  "Links": ["an", "array", "of", "absolute", "urls"],
  "plainTextWebsiteCopy": "a long string containing just the text of the site, no formatting",
  "oneLineSummary": "brief summarization of what the site is about"
}

Your website URL, for the relative absolute conversions, is https://tempurmattress-exdisplay.co.uk
